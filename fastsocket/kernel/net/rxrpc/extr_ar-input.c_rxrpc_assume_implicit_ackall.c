
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rxrpc_call {int state; int state_lock; int flags; int events; int resend_timer; int acks_latest; } ;



 int RXRPC_CALL_CLIENT_RECV_REPLY ;
 int RXRPC_CALL_RCVD_ACKALL ;
 int RXRPC_CALL_RESEND ;
 int RXRPC_CALL_RESEND_TIMER ;
 int RXRPC_CALL_RUN_RTIMER ;
 int _debug (char*,int ) ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 int try_to_del_timer_sync (int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void rxrpc_assume_implicit_ackall(struct rxrpc_call *call, u32 serial)
{
 write_lock_bh(&call->state_lock);

 switch (call->state) {
 case 128:
  call->state = RXRPC_CALL_CLIENT_RECV_REPLY;
  call->acks_latest = serial;

  _debug("implicit ACKALL %%%u", call->acks_latest);
  set_bit(RXRPC_CALL_RCVD_ACKALL, &call->events);
  write_unlock_bh(&call->state_lock);

  if (try_to_del_timer_sync(&call->resend_timer) >= 0) {
   clear_bit(RXRPC_CALL_RESEND_TIMER, &call->events);
   clear_bit(RXRPC_CALL_RESEND, &call->events);
   clear_bit(RXRPC_CALL_RUN_RTIMER, &call->flags);
  }
  break;

 default:
  write_unlock_bh(&call->state_lock);
  break;
 }
}
