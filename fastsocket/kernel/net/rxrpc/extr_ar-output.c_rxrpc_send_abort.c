
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rxrpc_call {scalar_t__ state; int state_lock; int flags; int events; int ack_timer; int resend_timer; int abort_code; } ;


 int RXRPC_CALL_ABORT ;
 int RXRPC_CALL_ACK ;
 scalar_t__ RXRPC_CALL_COMPLETE ;
 scalar_t__ RXRPC_CALL_LOCALLY_ABORTED ;
 int RXRPC_CALL_RESEND_TIMER ;
 int RXRPC_CALL_RUN_RTIMER ;
 int clear_bit (int ,int *) ;
 int del_timer_sync (int *) ;
 int rxrpc_queue_call (struct rxrpc_call*) ;
 int set_bit (int ,int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void rxrpc_send_abort(struct rxrpc_call *call, u32 abort_code)
{
 write_lock_bh(&call->state_lock);

 if (call->state <= RXRPC_CALL_COMPLETE) {
  call->state = RXRPC_CALL_LOCALLY_ABORTED;
  call->abort_code = abort_code;
  set_bit(RXRPC_CALL_ABORT, &call->events);
  del_timer_sync(&call->resend_timer);
  del_timer_sync(&call->ack_timer);
  clear_bit(RXRPC_CALL_RESEND_TIMER, &call->events);
  clear_bit(RXRPC_CALL_ACK, &call->events);
  clear_bit(RXRPC_CALL_RUN_RTIMER, &call->flags);
  rxrpc_queue_call(call);
 }

 write_unlock_bh(&call->state_lock);
}
