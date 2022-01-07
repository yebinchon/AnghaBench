
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
typedef int apr_status_t ;
struct TYPE_9__ {TYPE_2__* local_addr; scalar_t__ local_interface_unknown; scalar_t__ local_port_unknown; int socketdes; } ;
typedef TYPE_4__ apr_socket_t ;
struct TYPE_6__ {int sin_port; } ;
struct TYPE_8__ {TYPE_1__ sin; } ;
struct TYPE_7__ {int salen; TYPE_3__ sa; int port; } ;


 int APR_SUCCESS ;
 int apr_get_netos_error () ;
 scalar_t__ getsockname (int ,struct sockaddr*,int*) ;
 int ntohs (int ) ;

__attribute__((used)) static apr_status_t get_local_addr(apr_socket_t *sock)
{
    sock->local_addr->salen = sizeof(sock->local_addr->sa);
    if (getsockname(sock->socketdes, (struct sockaddr *)&sock->local_addr->sa,
                    &sock->local_addr->salen) < 0) {
        return apr_get_netos_error();
    }
    else {
        sock->local_port_unknown = sock->local_interface_unknown = 0;

        sock->local_addr->port = ntohs(sock->local_addr->sa.sin.sin_port);
        return APR_SUCCESS;
    }
}
