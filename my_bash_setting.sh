# Protect
alias rmi='rm -i -v'
alias mvi='mv -i'
alias cpi='cp -i -v'


# Push and pop directories on directory stackO
alias pu='pushd'
alias po='popd'

# Basic directory operations
alias ...='cd ../..'
alias -- -='cd -'

# Super user
alias _='sudo'
alias please='sudo'

#alias g='grep -in'
# List direcory contents
alias lsa='ls -lah'
alias l='ls -la'
alias ll='ls -lF --color=auto'
alias la='ls -lFA --color=auto'
alias sl=ls # often screw this up
function cl(){ cd "$@" && la; }

alias c=clear
alias ..='cd ..'
alias cd..='cd ..'
alias cd...='cd ../..'
alias cd....='cd ../../..'
alias cd.....='cd ../../../..'

alias 1='cd -'
alias md='mkdir -p'
alias rd=rmdir

export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;32'

if [ -z $HISTFILE ]; then
    HISTFILE=$HOME/.bash_history
fi
export HISTSIZE=10000
export SAVEHIST=10000
export HISTCONTROL=ignoredups
shopt -s histappend
shopt -s cmdhist
shopt -s extglob
shopt -s nocaseglob
complete -cf sudo man

export PS1="\u@\h:\w [\t][\!]>"
export EDITOR=vim
