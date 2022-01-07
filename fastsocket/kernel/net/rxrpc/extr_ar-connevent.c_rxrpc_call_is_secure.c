
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_call {scalar_t__ state; int state_lock; int events; } ;


 scalar_t__ RXRPC_CALL_COMPLETE ;
 int RXRPC_CALL_SECURED ;
 int _enter (char*,struct rxrpc_call*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int rxrpc_queue_call (struct rxrpc_call*) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void rxrpc_call_is_secure(struct rxrpc_call *call)
{
 _enter("%p", call);
 if (call) {
  read_lock(&call->state_lock);
  if (call->state < RXRPC_CALL_COMPLETE &&
      !test_and_set_bit(RXRPC_CALL_SECURED, &call->events))
   rxrpc_queue_call(call);
  read_unlock(&call->state_lock);
 }
}
