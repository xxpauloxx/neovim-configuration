" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
  Plug 'sheerun/vim-polyglot'
  Plug 'vim-airline/vim-airline'
  Plug 'jiangmiao/auto-pairs'
  Plug 'mattn/webapi-vim'

  " :help vim-gist-setup
  Plug 'airblade/vim-gitgutter'

  " :Neoformat <language>
  Plug 'sbdchd/neoformat'

  Plug 'APZelos/blamer.nvim'

  " :Bracey
  " :BraceyStop
  " :BraceyReload
  Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}

  " :DogeGenerate
  Plug 'kkoomen/vim-doge'

  " :TagbarToggle
  Plug 'majutsushi/tagbar'

  " :Neoformat <language>
  " https://github.com/sbdchd/neoformat
  Plug 'sbdchd/neoformat'

  " Autocomplete
  Plug 'neoclide/coc.nvim', { 'branch': 'release' }

  " :Ack word_finded
  " brew install ag
  Plug 'mileszs/ack.vim'

  " :Run
  " :RunKillAll
  Plug 'sbdchd/vim-run'

  " Janet programming language
  Plug 'bakpakin/janet.vim'

  " :Gist -p
  Plug 'mattn/gist-vim'

  " Ctrl+l -> comment
  " Ctrl+k -> uncomment
  Plug 'sudar/comments.vim'

  " :Far foo bar <**/*.py> -> Replace
  " :Fardo -> apply
  Plug 'brooth/far.vim'

  " :GitMessenger
  Plug 'rhysd/git-messenger.vim'

  " Java unused imports
  " :UnusedImports " highlight all unused imports
  " :UnusedImportsReset " clear the highlights
  " :UnusedImportsRemove " remove all unused imports
  Plug 'akhaku/vim-java-unused-imports'

  " Themes
  Plug 'vim-airline/vim-airline-themes'
  Plug 'ayu-theme/ayu-vim'

call plug#end()

""" Extensios configurations
""" Bash
au FileType sh set noexpandtab
au FileType sh set shiftwidth=2
au FileType sh set softtabstop=2
au FileType sh set tabstop=2

""" CSS
au FileType css set expandtab
au FileType css set shiftwidth=2
au FileType css set softtabstop=2
au FileType css set tabstop=2

""" gitcommit
au FileType gitcommit setlocal spell
au FileType gitcommit setlocal textwidth=80

""" HTML
au FileType html set expandtab
au FileType html set shiftwidth=2
au FileType html set softtabstop=2
au FileType html set tabstop=2

""" JavaScript
au FileType javascript set expandtab
au FileType javascript set shiftwidth=2
au FileType javascript set softtabstop=2
au FileType javascript set tabstop=2

""" JSON
au FileType json set expandtab
au FileType json set shiftwidth=2
au FileType json set softtabstop=2
au FileType json set tabstop=2

""" LESS
au FileType less set expandtab
au FileType less set shiftwidth=2
au FileType less set softtabstop=2
au FileType less set tabstop=2

""" Make
au FileType make set noexpandtab
au FileType make set shiftwidth=2
au FileType make set softtabstop=2
au FileType make set tabstop=2

""" Markdown
au FileType markdown setlocal spell
au FileType markdown set expandtab
au FileType markdown set shiftwidth=4
au FileType markdown set softtabstop=4
au FileType markdown set tabstop=4
au FileType markdown set syntax=markdown

""" Python
au FileType python set expandtab
au FileType python set shiftwidth=4
au FileType python set softtabstop=4
au FileType python set tabstop=4

""" Jinja 2
au FileType jinja2 set expandtab
au FileType jinja2 set shiftwidth=2
au FileType jinja2 set softtabstop=2
au FileType jinja2 set tabstop=2

""" SQL
au FileType sql set expandtab
au FileType sql set shiftwidth=2
au FileType sql set softtabstop=2
au FileType sql set tabstop=2

""" vimscript
au FileType vim set expandtab
au FileType vim set shiftwidth=4
au FileType vim set softtabstop=4
au FileType vim set tabstop=4

""" YAML
au FileType yaml set expandtab
au FileType yaml set shiftwidth=2
au FileType yaml set softtabstop=2
au FileType yaml set tabstop=2

""" Go
au FileType go set expandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4

""" Java
au FileType java set expandtab
au FileType java set shiftwidth=4
au FileType java set softtabstop=4
au FileType java set tabstop=4

""" CPP
au FileType cpp set expandtab
au FileType cpp set shiftwidth=4
au FileType cpp set softtabstop=4
au FileType cpp set tabstop=4

""" C
au FileType c set expandtab
au FileType c set shiftwidth=4
au FileType c set softtabstop=4
au FileType c set tabstop=4

""" Set configurations
set autoindent
set smartindent
set autoread
set autowrite
set autowriteall
set clipboard=unnamedplus
set cursorline
set encoding=utf-8
set expandtab
set nospell
set noswapfile
set nowrap
set noerrorbells
set novisualbell
set number
set ruler
set formatoptions=tcqron
set softtabstop=2
set tabstop=2
set textwidth=120
set title
set updatetime=100
set hidden
set listchars=eol:¬,tab:→→,extends:>,precedes:<,space:.
set list
set hidden
set shortmess=aFc
set termguicolors
syntax on
set background=dark

let ayucolor="dark"
colorscheme ayu
let g:airline_theme="minimalist"

" Mouse configuration.
set mouse=a

" Apply configurations.
let &colorcolumn="80,".join(range(80,80),",")

let g:blamer_enabled = 1

" ~/.gitconfig
let g:gist_use_password_in_gitconfig = 1

let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''

let g:airline#extensions#tagbar#enabled = 0

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

let g:coc_global_extensions = [
  \ 'coc-cmake',
  \ 'coc-docker',
  \ 'coc-eslint',
  \ 'coc-git',
  \ 'coc-go',
  \ 'coc-highlight',
  \ 'coc-java',
  \ 'coc-java-lombok',
  \ 'coc-jedi',
  \ 'coc-jest',
  \ 'coc-json',
  \ 'coc-yaml',
  \ 'coc-xml',
  \ 'coc-webpack',
  \ 'coc-vimlsp',
  \ 'coc-vetur',
  \ 'coc-terminal',
  \ 'coc-svelte',
  \ 'coc-sql',
  \ 'coc-prettier',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-tsserver',
  \ 'coc-explorer',
  \ 'coc-flutter',
  \ 'coc-htmlhint',
  \ 'coc-html-css-support',
  \ 'coc-clangd'
  \ ]

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> dc :call <SID>show_documentation()<CR>

" Remap for do codeAction of current line
nmap <silent>ac (coc-codeaction)

" Fix autofix problem of current line
nmap <silent>qf (coc-fix-current)

" Symbol renaming.
nmap <silent>rn <Plug>(coc-rename)

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Direction navigate keysmaps
nnoremap <C-down> <C-W><C-J>
nnoremap <C-up> <C-W><C-K>
nnoremap <C-right> <C-W><C-L>
nnoremap <C-left> <C-W><C-H>

" Sidebar toggle
nnoremap <F2> :CocCommand explorer --width 25<CR>

let g:coc_explorer_global_presets = {
\   '.vim': {
\      'root-uri': '~/.vim',
\   },
\   'floating': {
\      'position': 'floating',
\   },
\   'floatingLeftside': {
\      'position': 'floating',
\      'floating-position': 'left-center',
\      'floating-width': 10,
\   },
\   'floatingRightside': {
\      'position': 'floating',
\      'floating-position': 'left-center',
\      'floating-width': 10,
\   },
\   'simplify': {
\     'file.child.template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   }
\ }

" Tagbar toggle
nnoremap <F10> :TagbarToggle<cr>

" Terminal toggle
nnoremap <F11> :CocCommand terminal.Toggle<cr>

" press <esc> to cancel.
nmap f <Plug>(coc-smartf-forward)
nmap F <Plug>(coc-smartf-backward)
nmap ; <Plug>(coc-smartf-repeat)
nmap , <Plug>(coc-smartf-repeat-opposite)

" Refactor symbol
nmap rf <Plug>(coc-refactor)

" Rename symbol
nmap <leader>rn <Plug>(coc-rename)

" Multiple cursors
nmap <silent> <C-d> <Plug>(coc-cursors-word)*
xmap <silent> <C-d> y/\V<C-r>=escape(@",'/\')<CR><CR>gN<Plug>(coc-cursors-range)

" use normal command like `<leader>xi(`
nmap <leader>x <Plug>(coc-cursors-operator)

" Comments
let g:comments_map_keys = 0

" key-mappings for comment line in normal mode
" key-mappings for range comment lines in visual <Shift-V> mode
noremap  <silent> <C-L> :call CommentLine()<CR>
vnoremap <silent> <C-L> :call RangeCommentLine()<CR>

"" key-mappings for un-comment line in normal mode
"" key-mappings for range un-comment lines in visual <Shift-V> mode
noremap  <silent> <C-K> :call UnCommentLine()<CR>
vnoremap <silent> <C-K> :call RangeUnCommentLine()<CR>

" Functions
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

