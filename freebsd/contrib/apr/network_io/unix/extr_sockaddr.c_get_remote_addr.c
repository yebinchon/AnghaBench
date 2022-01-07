
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
struct TYPE_9__ {TYPE_3__* remote_addr; scalar_t__ remote_addr_unknown; int socketdes; } ;
typedef TYPE_4__ apr_socket_t ;
struct TYPE_6__ {int sin_port; } ;
struct TYPE_7__ {TYPE_1__ sin; } ;
struct TYPE_8__ {int salen; TYPE_2__ sa; int port; } ;


 int APR_SUCCESS ;
 int apr_get_netos_error () ;
 scalar_t__ getpeername (int ,struct sockaddr*,int*) ;
 int ntohs (int ) ;

__attribute__((used)) static apr_status_t get_remote_addr(apr_socket_t *sock)
{
    sock->remote_addr->salen = sizeof(sock->remote_addr->sa);
    if (getpeername(sock->socketdes, (struct sockaddr *)&sock->remote_addr->sa,
                    &sock->remote_addr->salen) < 0) {
        return apr_get_netos_error();
    }
    else {
        sock->remote_addr_unknown = 0;

        sock->remote_addr->port = ntohs(sock->remote_addr->sa.sin.sin_port);
        return APR_SUCCESS;
    }
}
