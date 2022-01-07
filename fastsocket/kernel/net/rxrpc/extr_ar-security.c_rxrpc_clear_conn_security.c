
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rxrpc_connection {int server_key; int key; TYPE_1__* security; int debug_id; } ;
struct TYPE_2__ {int (* clear ) (struct rxrpc_connection*) ;} ;


 int _enter (char*,int ) ;
 int key_put (int ) ;
 int rxrpc_security_put (TYPE_1__*) ;
 int stub1 (struct rxrpc_connection*) ;

void rxrpc_clear_conn_security(struct rxrpc_connection *conn)
{
 _enter("{%d}", conn->debug_id);

 if (conn->security) {
  conn->security->clear(conn);
  rxrpc_security_put(conn->security);
  conn->security = ((void*)0);
 }

 key_put(conn->key);
 key_put(conn->server_key);
}
