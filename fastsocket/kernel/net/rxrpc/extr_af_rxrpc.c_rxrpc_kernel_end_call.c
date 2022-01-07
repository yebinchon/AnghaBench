
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_call {int socket; int usage; int debug_id; } ;


 int _enter (char*,int ,int ) ;
 int atomic_read (int *) ;
 int rxrpc_put_call (struct rxrpc_call*) ;
 int rxrpc_remove_user_ID (int ,struct rxrpc_call*) ;

void rxrpc_kernel_end_call(struct rxrpc_call *call)
{
 _enter("%d{%d}", call->debug_id, atomic_read(&call->usage));
 rxrpc_remove_user_ID(call->socket, call);
 rxrpc_put_call(call);
}
