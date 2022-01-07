
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rxrpc_call {scalar_t__ state; int state_lock; int flags; int events; int resend_timer; } ;


 scalar_t__ RXRPC_CALL_COMPLETE ;
 int RXRPC_CALL_RESEND ;
 int RXRPC_CALL_RESEND_TIMER ;
 int RXRPC_CALL_RUN_RTIMER ;
 int _debug (char*) ;
 int clear_bit (int ,int *) ;
 int del_timer_sync (int *) ;
 int mod_timer (int *,unsigned long) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void rxrpc_set_resend(struct rxrpc_call *call, u8 resend,
        unsigned long resend_at)
{
 read_lock_bh(&call->state_lock);
 if (call->state >= RXRPC_CALL_COMPLETE)
  resend = 0;

 if (resend & 1) {
  _debug("SET RESEND");
  set_bit(RXRPC_CALL_RESEND, &call->events);
 }

 if (resend & 2) {
  _debug("MODIFY RESEND TIMER");
  set_bit(RXRPC_CALL_RUN_RTIMER, &call->flags);
  mod_timer(&call->resend_timer, resend_at);
 } else {
  _debug("KILL RESEND TIMER");
  del_timer_sync(&call->resend_timer);
  clear_bit(RXRPC_CALL_RESEND_TIMER, &call->events);
  clear_bit(RXRPC_CALL_RUN_RTIMER, &call->flags);
 }
 read_unlock_bh(&call->state_lock);
}
