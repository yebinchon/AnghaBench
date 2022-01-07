
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int apr_status_t ;
struct TYPE_5__ {scalar_t__ timeout; int options; int socketdes; } ;
typedef TYPE_1__ apr_socket_t ;
typedef scalar_t__ apr_interval_time_t ;


 int APR_INCOMPLETE_READ ;
 int APR_SO_NONBLOCK ;
 int APR_SUCCESS ;
 int apr_is_option_set (TYPE_1__*,int ) ;
 int apr_set_option (TYPE_1__*,int ,int) ;
 int soblock (int ) ;
 int sononblock (int ) ;

apr_status_t apr_socket_timeout_set(apr_socket_t *sock, apr_interval_time_t t)
{
    apr_status_t stat;
    if (t >= 0 && sock->timeout < 0) {
        if (apr_is_option_set(sock, APR_SO_NONBLOCK) != 1) {
            if ((stat = sononblock(sock->socketdes)) != APR_SUCCESS) {
                return stat;
            }
            apr_set_option(sock, APR_SO_NONBLOCK, 1);
        }
    }
    else if (t < 0 && sock->timeout >= 0) {
        if (apr_is_option_set(sock, APR_SO_NONBLOCK) != 0) {
            if ((stat = soblock(sock->socketdes)) != APR_SUCCESS) {
                return stat;
            }
            apr_set_option(sock, APR_SO_NONBLOCK, 0);
        }
    }



    if (t <= 0) {
        sock->options &= ~APR_INCOMPLETE_READ;
    }
    sock->timeout = t;
    return APR_SUCCESS;
}
