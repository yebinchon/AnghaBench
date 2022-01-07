
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rxrpc_call {scalar_t__ state; int state_lock; int events; int abort_code; } ;


 int RXRPC_CALL_ABORT ;
 scalar_t__ RXRPC_CALL_COMPLETE ;
 scalar_t__ RXRPC_CALL_LOCALLY_ABORTED ;
 int set_bit (int ,int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static inline void rxrpc_abort_call(struct rxrpc_call *call, u32 abort_code)
{
 write_lock_bh(&call->state_lock);
 if (call->state < RXRPC_CALL_COMPLETE) {
  call->abort_code = abort_code;
  call->state = RXRPC_CALL_LOCALLY_ABORTED;
  set_bit(RXRPC_CALL_ABORT, &call->events);
 }
 write_unlock_bh(&call->state_lock);
}
