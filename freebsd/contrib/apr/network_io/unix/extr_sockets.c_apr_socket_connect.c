
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
typedef int error ;
typedef int apr_status_t ;
typedef int apr_socklen_t ;
struct TYPE_11__ {scalar_t__ timeout; int local_port_unknown; int local_interface_unknown; int connected; TYPE_2__* local_addr; TYPE_8__* remote_addr; scalar_t__ remote_addr_unknown; int socketdes; } ;
typedef TYPE_3__ apr_socket_t ;
struct TYPE_9__ {int sin; } ;
struct TYPE_12__ {int port; int family; int salen; TYPE_1__ sa; int ipaddr_len; int ipaddr_ptr; } ;
typedef TYPE_4__ apr_sockaddr_t ;
struct TYPE_13__ {int salen; TYPE_1__ sa; } ;
struct TYPE_10__ {scalar_t__ port; int ipaddr_len; int ipaddr_ptr; } ;


 int APR_SUCCESS ;
 scalar_t__ EALREADY ;
 scalar_t__ EINPROGRESS ;
 scalar_t__ EINTR ;
 scalar_t__ EISCONN ;
 int SOL_SOCKET ;
 int SO_ERROR ;
 int apr_sockaddr_vars_set (TYPE_8__*,int ,int ) ;
 int apr_wait_for_io_or_timeout (int *,TYPE_3__*,int ) ;
 int connect (int ,struct sockaddr const*,int ) ;
 scalar_t__ errno ;
 int generic_inaddr_any ;
 int getsockopt (int ,int ,int ,char*,int*) ;
 scalar_t__ memcmp (int ,int ,int ) ;

apr_status_t apr_socket_connect(apr_socket_t *sock, apr_sockaddr_t *sa)
{
    int rc;

    do {
        rc = connect(sock->socketdes,
                     (const struct sockaddr *)&sa->sa.sin,
                     sa->salen);
    } while (rc == -1 && errno == EINTR);




    if ((rc == -1) && (errno == EINPROGRESS || errno == EALREADY)
                   && (sock->timeout > 0)) {
        rc = apr_wait_for_io_or_timeout(((void*)0), sock, 0);
        if (rc != APR_SUCCESS) {
            return rc;
        }
    }


    if (memcmp(sa->ipaddr_ptr, generic_inaddr_any, sa->ipaddr_len)) {



        sock->remote_addr_unknown = 0;


        sock->remote_addr->sa = sa->sa;
        sock->remote_addr->salen = sa->salen;

        apr_sockaddr_vars_set(sock->remote_addr, sa->family, sa->port);
    }

    if (sock->local_addr->port == 0) {

        sock->local_port_unknown = 1;
    }
    if (!memcmp(sock->local_addr->ipaddr_ptr,
                generic_inaddr_any,
                sock->local_addr->ipaddr_len)) {



        sock->local_interface_unknown = 1;
    }

    if (rc == -1 && errno != EISCONN) {
        return errno;
    }


    sock->connected=1;

    return APR_SUCCESS;
}
