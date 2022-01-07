
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (char*) ;
 int proto_register (int *,int) ;
 int proto_unregister (int *) ;
 int sock_register (int *) ;
 int sockets_enabled ;
 int tipc_family_ops ;
 int tipc_proto ;

int tipc_socket_init(void)
{
 int res;

 res = proto_register(&tipc_proto, 1);
 if (res) {
  err("Failed to register TIPC protocol type\n");
  goto out;
 }

 res = sock_register(&tipc_family_ops);
 if (res) {
  err("Failed to register TIPC socket type\n");
  proto_unregister(&tipc_proto);
  goto out;
 }

 sockets_enabled = 1;
 out:
 return res;
}
