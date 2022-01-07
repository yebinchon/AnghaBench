
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
typedef scalar_t__ apr_status_t ;
typedef int apr_ssize_t ;
struct TYPE_6__ {scalar_t__ timeout; int socketdes; } ;
typedef TYPE_1__ apr_socket_t ;
struct TYPE_7__ {int salen; int sa; } ;
typedef TYPE_2__ apr_sockaddr_t ;
typedef int apr_size_t ;
typedef int apr_int32_t ;


 scalar_t__ APR_SUCCESS ;
 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 scalar_t__ EWOULDBLOCK ;
 scalar_t__ apr_wait_for_io_or_timeout (int *,TYPE_1__*,int ) ;
 scalar_t__ errno ;
 int sendto (int ,char const*,int,int ,struct sockaddr const*,int ) ;

apr_status_t apr_socket_sendto(apr_socket_t *sock, apr_sockaddr_t *where,
                               apr_int32_t flags, const char *buf,
                               apr_size_t *len)
{
    apr_ssize_t rv;

    do {
        rv = sendto(sock->socketdes, buf, (*len), flags,
                    (const struct sockaddr*)&where->sa,
                    where->salen);
    } while (rv == -1 && errno == EINTR);

    while ((rv == -1) && (errno == EAGAIN || errno == EWOULDBLOCK)
                      && (sock->timeout > 0)) {
        apr_status_t arv = apr_wait_for_io_or_timeout(((void*)0), sock, 0);
        if (arv != APR_SUCCESS) {
            *len = 0;
            return arv;
        } else {
            do {
                rv = sendto(sock->socketdes, buf, (*len), flags,
                            (const struct sockaddr*)&where->sa,
                            where->salen);
            } while (rv == -1 && errno == EINTR);
        }
    }
    if (rv == -1) {
        *len = 0;
        return errno;
    }
    *len = rv;
    return APR_SUCCESS;
}
