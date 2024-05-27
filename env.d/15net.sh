#! /bin/sh
# shellcheck disable=2034,2154
# SC2034: VAR appears unused => VAR used for templating
# SC2154: VAR is referenced but not assigned => VAR is assigned with eval statement in 01init.sh function

BUILDER_NET='builder'
JUMP_AREA_NET='jump-area'
PROXIFIED_DOCKER_SOCKET_NET='proxified-docker-socket'
PROXIFIED_XSERVER_SOCKET_NET='proxified-xserver-socket'

SUBNET_MASK='/24'

PROXY_PORT='2363'
BUILDER_PORT='2364'
XSERVER_PORT='2365'

NET_PFX='172.17'
PROXIFIED_DOCKER_SOCKET_PFX="${NET_PFX}.1"
BUILDER_PFX="${NET_PFX}.2"
PROXIFIED_XSERVER_SOCKET_PFX="${NET_PFX}.3"
JUMP_AREA_PFX="${NET_PFX}.4"

BUILDER_SUB="${BUILDER_PFX}.0${SUBNET_MASK}"
JUMP_AREA_SUB="${JUMP_AREA_PFX}.0${SUBNET_MASK}"
PROXIFIED_DOCKER_SOCKET_SUB="${PROXIFIED_DOCKER_SOCKET_PFX}.0${SUBNET_MASK}"
PROXIFIED_XSERVER_SOCKET_SUB="${PROXIFIED_XSERVER_SOCKET_PFX}.0${SUBNET_MASK}"

# shellcheck disable=2153
# SC2153: Possible misspelling => it is not, we really want PROXY_ID here
_DOCKER_HOST="${PROXY_HOST}:${PROXY_PORT}"
HTTP_DOCKER_HOST="http://${_DOCKER_HOST}"
TCP_DOCKER_HOST="tcp://${_DOCKER_HOST}"
#
# shellcheck disable=2153
# SC2153: Possible misspelling => it is not, we really want BUILDER_HOST here
_BUILDKIT_HOST="${BUILDER_HOST}:${BUILDER_PORT}"
TCP_BUILDKIT_HOST="tcp://${_BUILDKIT_HOST}"

BUILDER_GATEWAY_IP="${BUILDER_PFX}.1"
JUMP_AREA_GATEWAY_IP="${JUMP_AREA_PFX}.1"
PROXIFIED_DOCKER_SOCKET_GATEWAY_IP="${PROXIFIED_DOCKER_SOCKET_PFX}.1"
PROXIFIED_XSERVER_SOCKET_GATEWAY_IP="${PROXIFIED_XSERVER_SOCKET_PFX}.1"
PROXY_IP="${PROXIFIED_DOCKER_SOCKET_PFX}.2"
COLLECTOR_IP="${PROXIFIED_DOCKER_SOCKET_PFX}.3"
CONTROLLER_IP="${PROXIFIED_DOCKER_SOCKET_PFX}.4"
XSERVER_IP="${PROXIFIED_XSERVER_SOCKET_PFX}.2"
SPACEPORN_RELAY_IP="${PROXIFIED_XSERVER_SOCKET_PFX}.3"
