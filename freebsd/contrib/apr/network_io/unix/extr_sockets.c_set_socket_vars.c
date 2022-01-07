
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int protocol; int options; int remote_addr; int local_addr; } ;
typedef TYPE_1__ apr_socket_t ;


 int APR_TCP_NODELAY ;
 int apr_sockaddr_vars_set (int ,int,int ) ;

__attribute__((used)) static void set_socket_vars(apr_socket_t *sock, int family, int type, int protocol)
{
    sock->type = type;
    sock->protocol = protocol;
    apr_sockaddr_vars_set(sock->local_addr, family, 0);
    apr_sockaddr_vars_set(sock->remote_addr, family, 0);
    sock->options = 0;






}
