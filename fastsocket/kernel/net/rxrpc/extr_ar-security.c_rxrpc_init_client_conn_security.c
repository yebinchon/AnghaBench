
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rxrpc_security {int (* init_connection_security ) (struct rxrpc_connection*) ;} ;
struct rxrpc_key_token {int security_index; } ;
struct rxrpc_connection {struct rxrpc_security* security; int debug_id; struct key* key; } ;
struct TYPE_2__ {struct rxrpc_key_token* data; } ;
struct key {TYPE_1__ payload; } ;


 int EKEYREJECTED ;
 int _enter (char*,int ,int ) ;
 int _leave (char*) ;
 int key_serial (struct key*) ;
 int key_validate (struct key*) ;
 struct rxrpc_security* rxrpc_security_lookup (int ) ;
 int rxrpc_security_put (struct rxrpc_security*) ;
 int stub1 (struct rxrpc_connection*) ;

int rxrpc_init_client_conn_security(struct rxrpc_connection *conn)
{
 struct rxrpc_key_token *token;
 struct rxrpc_security *sec;
 struct key *key = conn->key;
 int ret;

 _enter("{%d},{%x}", conn->debug_id, key_serial(key));

 if (!key)
  return 0;

 ret = key_validate(key);
 if (ret < 0)
  return ret;

 if (!key->payload.data)
  return -EKEYREJECTED;
 token = key->payload.data;

 sec = rxrpc_security_lookup(token->security_index);
 if (!sec)
  return -EKEYREJECTED;
 conn->security = sec;

 ret = conn->security->init_connection_security(conn);
 if (ret < 0) {
  rxrpc_security_put(conn->security);
  conn->security = ((void*)0);
  return ret;
 }

 _leave(" = 0");
 return 0;
}
