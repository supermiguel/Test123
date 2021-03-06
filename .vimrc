set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
" To install Plugins use: :PluginInstall

" enable nerdtree
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

" Auto-Indentation
Plugin 'vim-scripts/indentpython.vim'

" Auto Complete
Bundle 'Valloric/YouCompleteMe'

" Syntax Checking/Highlighting
Plugin 'vim-syntastic/syntastic'

" PEP 8 checking with this nifty little plugin
Plugin 'nvie/vim-flake8'

" Super Search
Plugin 'kien/ctrlp.vim'

" PowerLine
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" UTF-8 Support
set encoding=utf-8

" add python support to vim
let g:python3_host_prog = 'C:\Users\mveliz\AppData\Local\Programs\Python\Python37\python.exe'


" enable syntax highlighting
syntax enable

" show line numbers
set number

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line
" set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

" Add Ctrl + N to open NerdTreeToggle
map <C-n> :NERDTreeToggle<CR>


" test for autocomplete
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
