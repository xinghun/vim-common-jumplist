" A "jump" is a command that normally moves the cursor several lines away.  If
" you make the cursor "jump" the position of the cursor before the jump is
" remembered.  You can return to that position with the "''" and "``" commands,
" unless the line containing that position was changed or deleted.  The
" following commands are "jump" commands: "'", "`", "G", "/", "?", "n", "N",
" "%", "(", ")", "[[", "]]", "{", "}", ":s", ":tag", "L", "M", "H" and the
" commands that start editing a new file.

nnoremap <silent> m` :call common_jumplist#PushLocation()<CR>m`
nnoremap <silent> m' :call common_jumplist#PushLocation()<CR>m'
nnoremap <silent> G :call common_jumplist#PushLocation()<CR>G
nnoremap <silent> gg :call common_jumplist#PushLocation()<CR>gg
nnoremap <silent> n :call common_jumplist#PushLocation()<CR>n
nnoremap <silent> N :call common_jumplist#PushLocation()<CR>N
nnoremap <silent> % :call common_jumplist#PushLocation()<CR>%
nnoremap <silent> { :call common_jumplist#PushLocation()<CR>{
nnoremap <silent> } :call common_jumplist#PushLocation()<CR>}
nnoremap <silent> L :call common_jumplist#PushLocation()<CR>L
nnoremap <silent> M :call common_jumplist#PushLocation()<CR>M
nnoremap <silent> H :call common_jumplist#PushLocation()<CR>H
nnoremap <silent> <C-w>h :call common_jumplist#PushLocation()<CR><C-w>h
nnoremap <silent> <C-w>j :call common_jumplist#PushLocation()<CR><C-w>j
nnoremap <silent> <C-w>k :call common_jumplist#PushLocation()<CR><C-w>k
nnoremap <silent> <C-w>l :call common_jumplist#PushLocation()<CR><C-w>l

" BufRead    starting to edit a new buffer, after reading the file
" autocmd BufRead * call common_jumplist#PushLocation()

nnoremap <silent> <C-o> :call common_jumplist#JumpBack()<CR>
nnoremap <silent> <C-i> :call common_jumplist#JumpForward()<CR>
