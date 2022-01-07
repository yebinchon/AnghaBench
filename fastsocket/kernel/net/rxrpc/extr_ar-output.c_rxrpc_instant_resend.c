
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_call {scalar_t__ state; int state_lock; int events; int flags; int resend_timer; } ;


 scalar_t__ RXRPC_CALL_COMPLETE ;
 int RXRPC_CALL_RESEND_TIMER ;
 int RXRPC_CALL_RUN_RTIMER ;
 int clear_bit (int ,int *) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int rxrpc_queue_call (struct rxrpc_call*) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ try_to_del_timer_sync (int *) ;

__attribute__((used)) static inline void rxrpc_instant_resend(struct rxrpc_call *call)
{
 read_lock_bh(&call->state_lock);
 if (try_to_del_timer_sync(&call->resend_timer) >= 0) {
  clear_bit(RXRPC_CALL_RUN_RTIMER, &call->flags);
  if (call->state < RXRPC_CALL_COMPLETE &&
      !test_and_set_bit(RXRPC_CALL_RESEND_TIMER, &call->events))
   rxrpc_queue_call(call);
 }
 read_unlock_bh(&call->state_lock);
}
