
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_call {scalar_t__ state; int state_lock; int events; int abort_code; } ;


 int RXRPC_CALL_ABORT ;
 scalar_t__ RXRPC_CALL_COMPLETE ;
 scalar_t__ RXRPC_CALL_DEAD ;
 scalar_t__ RXRPC_CALL_LOCALLY_ABORTED ;
 int RXRPC_CALL_RELEASE ;
 int RX_CALL_DEAD ;
 int _debug (char*,struct rxrpc_call*) ;
 int rxrpc_queue_call (struct rxrpc_call*) ;
 int test_and_set_bit (int ,int *) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static void rxrpc_mark_call_released(struct rxrpc_call *call)
{
 bool sched;

 write_lock(&call->state_lock);
 if (call->state < RXRPC_CALL_DEAD) {
  sched = 0;
  if (call->state < RXRPC_CALL_COMPLETE) {
   _debug("abort call %p", call);
   call->state = RXRPC_CALL_LOCALLY_ABORTED;
   call->abort_code = RX_CALL_DEAD;
   if (!test_and_set_bit(RXRPC_CALL_ABORT, &call->events))
    sched = 1;
  }
  if (!test_and_set_bit(RXRPC_CALL_RELEASE, &call->events))
   sched = 1;
  if (sched)
   rxrpc_queue_call(call);
 }
 write_unlock(&call->state_lock);
}
