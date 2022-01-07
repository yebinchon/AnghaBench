
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int family; } ;


 int proto_unregister (int *) ;
 int sock_unregister (int ) ;
 scalar_t__ sockets_enabled ;
 TYPE_1__ tipc_family_ops ;
 int tipc_proto ;

void tipc_socket_stop(void)
{
 if (!sockets_enabled)
  return;

 sockets_enabled = 0;
 sock_unregister(tipc_family_ops.family);
 proto_unregister(&tipc_proto);
}
