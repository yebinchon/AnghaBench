
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
typedef int apr_status_t ;
struct TYPE_9__ {int local_port_unknown; TYPE_4__* local_addr; int socketdes; } ;
typedef TYPE_3__ apr_socket_t ;
struct TYPE_7__ {scalar_t__ sin_port; } ;
struct TYPE_8__ {TYPE_1__ sin; } ;
struct TYPE_10__ {TYPE_2__ sa; int salen; } ;
typedef TYPE_4__ apr_sockaddr_t ;


 int APR_SUCCESS ;
 int bind (int ,struct sockaddr*,int ) ;
 int errno ;

apr_status_t apr_socket_bind(apr_socket_t *sock, apr_sockaddr_t *sa)
{
    if (bind(sock->socketdes,
             (struct sockaddr *)&sa->sa, sa->salen) == -1) {
        return errno;
    }
    else {
        sock->local_addr = sa;

        if (sock->local_addr->sa.sin.sin_port == 0) {
            sock->local_port_unknown = 1;
        }
        return APR_SUCCESS;
    }
}
