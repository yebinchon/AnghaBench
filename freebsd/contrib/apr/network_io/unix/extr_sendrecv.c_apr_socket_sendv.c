
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct iovec {int iov_len; int iov_base; } ;
typedef scalar_t__ apr_status_t ;
typedef int apr_ssize_t ;
struct TYPE_5__ {int options; scalar_t__ timeout; int socketdes; } ;
typedef TYPE_1__ apr_socket_t ;
typedef int apr_size_t ;
typedef size_t apr_int32_t ;


 int APR_INCOMPLETE_WRITE ;
 scalar_t__ APR_SUCCESS ;
 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 scalar_t__ EWOULDBLOCK ;
 scalar_t__ apr_socket_send (TYPE_1__*,int ,int*) ;
 scalar_t__ apr_wait_for_io_or_timeout (int *,TYPE_1__*,int ) ;
 scalar_t__ errno ;
 int writev (int ,struct iovec const*,size_t) ;

apr_status_t apr_socket_sendv(apr_socket_t * sock, const struct iovec *vec,
                              apr_int32_t nvec, apr_size_t *len)
{
    *len = vec[0].iov_len;
    return apr_socket_send(sock, vec[0].iov_base, len);

}
