#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

set -o pipefail
set -eu
export PATH=${HOME}/bin:/usr/local/bin:${PATH}

# Otherwise we get unbound ZSH_VERSION :(
# TODO remove, this is temporary until asfd is updated.  Fix is in master.
# set +u
# . /usr/local/opt/asdf/asdf.sh
# set -u

export PATH="${HOME}/.asdf/shims:${PATH}"
"${DIR}/potrace-pp.py" $@
