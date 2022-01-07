
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_sock {int sk; } ;
struct rxrpc_call {int tx_waitq; int acks_winsz; int acks_tail; int acks_head; } ;


 scalar_t__ CIRC_SPACE (int ,int ,int ) ;
 int DECLARE_WAITQUEUE (int ,int ) ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int _enter (char*,scalar_t__,long) ;
 int _leave (char*,int) ;
 int add_wait_queue (int *,int *) ;
 int current ;
 int lock_sock (int *) ;
 int myself ;
 int release_sock (int *) ;
 int remove_wait_queue (int *,int *) ;
 long schedule_timeout (long) ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;
 int sock_intr_errno (long) ;

__attribute__((used)) static int rxrpc_wait_for_tx_window(struct rxrpc_sock *rx,
        struct rxrpc_call *call,
        long *timeo)
{
 DECLARE_WAITQUEUE(myself, current);
 int ret;

 _enter(",{%d},%ld",
        CIRC_SPACE(call->acks_head, call->acks_tail, call->acks_winsz),
        *timeo);

 add_wait_queue(&call->tx_waitq, &myself);

 for (;;) {
  set_current_state(TASK_INTERRUPTIBLE);
  ret = 0;
  if (CIRC_SPACE(call->acks_head, call->acks_tail,
          call->acks_winsz) > 0)
   break;
  if (signal_pending(current)) {
   ret = sock_intr_errno(*timeo);
   break;
  }

  release_sock(&rx->sk);
  *timeo = schedule_timeout(*timeo);
  lock_sock(&rx->sk);
 }

 remove_wait_queue(&call->tx_waitq, &myself);
 set_current_state(TASK_RUNNING);
 _leave(" = %d", ret);
 return ret;
}
