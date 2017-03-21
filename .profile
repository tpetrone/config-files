
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

alias goto_web="cd ~/Sites"
alias play_cultura="cd ~/ && ./play_cultura"

play() {
  if [[ $@ == cultura ]]; then
    command cd ~/ && ./play_cultura
  else
    echo "cultura"
  fi
}

git() {
    if [[ $@ == "ls" ]]; then
        command  git ls-tree -r master --name-only
    else
        command git "$@"
    fi
}
