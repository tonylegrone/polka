" -polka-

" Start .vimrc
if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

scriptencoding utf-8

"=============================================
" Initialization
"=============================================

" Load neobundle
call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'


NeoBundle "Lokaltog/vim-easymotion"
NeoBundle "Shougo/unite.vim"
NeoBundle "Shougo/vimshell.vim"
NeoBundle "SirVer/ultisnips"
NeoBundle "airblade/vim-gitgutter"
NeoBundle "bling/vim-airline"
NeoBundle "editorconfig/editorconfig-vim"
NeoBundle "golangtw/gocode.vim"
NeoBundle "gregsexton/MatchTag"
NeoBundle "hail2u/vim-css3-syntax"
NeoBundle "juvenn/mustache.vim"
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle "mattn/emmet-vim"
NeoBundle "mattn/gist-vim"
NeoBundle "mattn/webapi-vim"
NeoBundle "scrooloose/syntastic"
NeoBundle "sgur/unite-git_grep"
NeoBundle "tpope/vim-abolish"
NeoBundle "tpope/vim-eunuch"
NeoBundle "tpope/vim-speeddating"
NeoBundle "uggedal/go-vim"
NeoBundle "vim-scripts/Gundo"
NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }
NeoBundle 'duff/vim-scratch'
NeoBundle 'dhruvasagar/vim-railscasts-theme'
NeoBundle 'cseelus/vim-colors-clearance'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'mklabs/grunt.vim'
NeoBundle 'rizzatti/dash.vim'
NeoBundle 'rizzatti/funcoo.vim'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-git'
NeoBundle 'tpope/vim-ragtag'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-surround'
NeoBundle 'vim-scripts/matchit.zip'
NeoBundle 'chriskempson/base16-vim'
NeoBundle 'StanAngeloff/php.vim'
NeoBundle 'embear/vim-localvimrc'
NeoBundle 'lunaru/vim-twig'

" Check for missing packages
NeoBundleCheck

" Load plugins
filetype plugin indent on

"=============================================
" Options
"=============================================

" Enable utf-8
set encoding=utf-8

" Color
set t_Co=256
set background=dark
colorscheme base16-default
syntax on

" airline
let g:airline_theme='badwolf'
let g:airline_powerline_fonts=1
let g:airline_section_c = '%<%t%m'
let g:bufferline_echo = 0

" Syntastic
let g:syntastic_php_checkers=['php', 'phpmd']

" localvimrc
let g:localvimrc_whitelist = ".lvimrc"

" Turn off error bells
set noerrorbells
set visualbell
set t_vb=

" Search
set ignorecase
set smartcase
set hlsearch
set incsearch

" Tab completion
set wildmode=list:longest,full
set wildignore=*.swp,*.o,*.so,*.exe,*.dll
set wildmenu

" Scroll
set scrolloff=3

" Tab settings
set ts=2
set sw=2
set expandtab

" Hud
set ruler
set number
set laststatus=2 " Always show status bar
set nowrap

" Visible whitespace
set listchars=tab:»·,trail:·
set list

" Buffers
set hidden

" History
set history=1000
set undolevels=1000

" Backup Directories
set backupdir=~/.vim/backups,.
set directory=~/.vim/swaps,.
if exists('&undodir')
  set undodir=~/.vim/undo,.
endif

" Fix backspace
set backspace=indent,eol,start

" GUI options
if (has('gui_running'))
  set guifont=Inconsolata-dz:h12
  set guioptions-=T
  set guioptions-=m
endif

"=============================================
" Remaps
"=============================================

let mapleader=','
let maplocalleader=','

" No arrow keys
map <Left>  :echo "ಠ_ಠ"<cr>
map <Right> :echo "ಠ_ಠ"<cr>
map <Up>    :echo "ಠ_ಠ"<cr>
map <Down>  :echo "ಠ_ಠ"<cr>

" Jump key
nnoremap ` '
nnoremap ' `

" Change pane
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Turn off search highlight
nnoremap <localleader>/ :nohlsearch<CR>

" Trim trailing whitespace
nnoremap <localleader>ws m`:%s/\s\+$//e<CR>``

