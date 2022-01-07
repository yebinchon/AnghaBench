
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct linger {int l_onoff; int l_linger; } ;
typedef int apr_status_t ;
struct TYPE_5__ {int protocol; int socketdes; } ;
typedef TYPE_1__ apr_socket_t ;
typedef int apr_int32_t ;


 int APR_EINVAL ;
 int APR_ENOTIMPL ;


 int APR_MAX_SECS_TO_LINGER ;
 int const APR_RESET_NODELAY ;
 int APR_SUCCESS ;



 int APR_TCP_NOPUSH_FLAG ;
 int IPPROTO_IPV6 ;
 int IPPROTO_SCTP ;
 int IPPROTO_TCP ;
 int IPV6_V6ONLY ;
 int SCTP_NODELAY ;
 int SOL_SOCKET ;
 int SO_BROADCAST ;
 int SO_DEBUG ;
 int SO_KEEPALIVE ;
 int SO_LINGER ;
 int SO_RCVBUF ;
 int SO_REUSEADDR ;
 int SO_SNDBUF ;
 int TCP_DEFER_ACCEPT ;
 int TCP_NODELAY ;
 int apr_is_option_set (TYPE_1__*,int const) ;
 int apr_set_option (TYPE_1__*,int const,int) ;
 int errno ;
 int setsockopt (int ,int,int,void*,int) ;
 int soblock (int ) ;
 int sononblock (int ) ;

apr_status_t apr_socket_opt_set(apr_socket_t *sock,
                                apr_int32_t opt, apr_int32_t on)
{
    int one;
    apr_status_t rv;

    if (on)
        one = 1;
    else
        one = 0;
    switch(opt) {
    case 136:
        return APR_ENOTIMPL;

        break;
    case 137:
        if (on != apr_is_option_set(sock, 137)) {
            if (setsockopt(sock->socketdes, SOL_SOCKET, SO_DEBUG, (void *)&one, sizeof(int)) == -1) {
                return errno;
            }
            apr_set_option(sock, 137, on);
        }
        break;
    case 138:
        return APR_ENOTIMPL;

        break;
    case 132:
        if (on != apr_is_option_set(sock, 132)) {
            if (setsockopt(sock->socketdes, SOL_SOCKET, SO_REUSEADDR, (void *)&one, sizeof(int)) == -1) {
                return errno;
            }
            apr_set_option(sock, 132, on);
        }
        break;
    case 131:





        return APR_ENOTIMPL;

        break;
    case 133:





        return APR_ENOTIMPL;

        break;
    case 134:
        if (apr_is_option_set(sock, 134) != on) {
            if (on) {
                if ((rv = sononblock(sock->socketdes)) != APR_SUCCESS)
                    return rv;
            }
            else {
                if ((rv = soblock(sock->socketdes)) != APR_SUCCESS)
                    return rv;
            }
            apr_set_option(sock, 134, on);
        }
        break;
    case 135:
        return APR_ENOTIMPL;

        break;
    case 130:
        return APR_ENOTIMPL;

        break;
    case 129:
        return APR_ENOTIMPL;

        break;
    case 128:
        return APR_ENOTIMPL;

        break;
    case 140:
        apr_set_option(sock, 140, on);
        break;
    case 139:
        return APR_ENOTIMPL;

        break;
    default:
        return APR_EINVAL;
    }

    return APR_SUCCESS;
}
