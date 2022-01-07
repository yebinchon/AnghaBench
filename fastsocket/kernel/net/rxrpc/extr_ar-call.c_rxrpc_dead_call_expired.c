
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_call {int state_lock; int state; int debug_id; } ;


 int RXRPC_CALL_DEAD ;
 int _enter (char*,int ) ;
 int rxrpc_put_call (struct rxrpc_call*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void rxrpc_dead_call_expired(unsigned long _call)
{
 struct rxrpc_call *call = (struct rxrpc_call *) _call;

 _enter("{%d}", call->debug_id);

 write_lock_bh(&call->state_lock);
 call->state = RXRPC_CALL_DEAD;
 write_unlock_bh(&call->state_lock);
 rxrpc_put_call(call);
}
