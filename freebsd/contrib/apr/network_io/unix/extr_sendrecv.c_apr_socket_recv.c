
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ apr_status_t ;
typedef int apr_ssize_t ;
struct TYPE_4__ {int options; scalar_t__ timeout; int socketdes; } ;
typedef TYPE_1__ apr_socket_t ;
typedef int apr_size_t ;


 scalar_t__ APR_EOF ;
 int APR_INCOMPLETE_READ ;
 scalar_t__ APR_SUCCESS ;
 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 scalar_t__ EWOULDBLOCK ;
 scalar_t__ apr_wait_for_io_or_timeout (int *,TYPE_1__*,int) ;
 scalar_t__ errno ;
 int read (int ,char*,int) ;

apr_status_t apr_socket_recv(apr_socket_t *sock, char *buf, apr_size_t *len)
{
    apr_ssize_t rv;
    apr_status_t arv;

    if (sock->options & APR_INCOMPLETE_READ) {
        sock->options &= ~APR_INCOMPLETE_READ;
        goto do_select;
    }

    do {
        rv = read(sock->socketdes, buf, (*len));
    } while (rv == -1 && errno == EINTR);

    while ((rv == -1) && (errno == EAGAIN || errno == EWOULDBLOCK)
                      && (sock->timeout > 0)) {
do_select:
        arv = apr_wait_for_io_or_timeout(((void*)0), sock, 1);
        if (arv != APR_SUCCESS) {
            *len = 0;
            return arv;
        }
        else {
            do {
                rv = read(sock->socketdes, buf, (*len));
            } while (rv == -1 && errno == EINTR);
        }
    }
    if (rv == -1) {
        (*len) = 0;
        return errno;
    }
    if ((sock->timeout > 0) && (rv < *len)) {
        sock->options |= APR_INCOMPLETE_READ;
    }
    (*len) = rv;
    if (rv == 0) {
        return APR_EOF;
    }
    return APR_SUCCESS;
}
