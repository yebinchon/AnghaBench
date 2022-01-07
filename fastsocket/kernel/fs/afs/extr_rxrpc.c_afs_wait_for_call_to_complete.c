
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct afs_call {int error; scalar_t__ state; TYPE_1__* type; int * rxcall; int rx_queue; int waitq; } ;
struct TYPE_2__ {int (* destructor ) (struct afs_call*) ;} ;


 scalar_t__ AFS_CALL_COMPLETE ;
 int DECLARE_WAITQUEUE (int ,int ) ;
 int EINTR ;
 int RX_CALL_DEAD ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int __set_current_state (int ) ;
 int _debug (char*) ;
 int _enter (char*) ;
 int _leave (char*,int) ;
 int add_wait_queue (int *,int *) ;
 int afs_deliver_to_call (struct afs_call*) ;
 int afs_free_call (struct afs_call*) ;
 int afs_free_skb (struct sk_buff*) ;
 int current ;
 int myself ;
 int remove_wait_queue (int *,int *) ;
 int rxrpc_kernel_abort_call (int *,int ) ;
 int rxrpc_kernel_end_call (int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_empty (int *) ;
 int stub1 (struct afs_call*) ;

__attribute__((used)) static int afs_wait_for_call_to_complete(struct afs_call *call)
{
 struct sk_buff *skb;
 int ret;

 DECLARE_WAITQUEUE(myself, current);

 _enter("");

 add_wait_queue(&call->waitq, &myself);
 for (;;) {
  set_current_state(TASK_INTERRUPTIBLE);


  if (!skb_queue_empty(&call->rx_queue)) {
   __set_current_state(TASK_RUNNING);
   afs_deliver_to_call(call);
   continue;
  }

  ret = call->error;
  if (call->state >= AFS_CALL_COMPLETE)
   break;
  ret = -EINTR;
  if (signal_pending(current))
   break;
  schedule();
 }

 remove_wait_queue(&call->waitq, &myself);
 __set_current_state(TASK_RUNNING);


 if (call->state < AFS_CALL_COMPLETE) {
  _debug("call incomplete");
  rxrpc_kernel_abort_call(call->rxcall, RX_CALL_DEAD);
  while ((skb = skb_dequeue(&call->rx_queue)))
   afs_free_skb(skb);
 }

 _debug("call complete");
 rxrpc_kernel_end_call(call->rxcall);
 call->rxcall = ((void*)0);
 call->type->destructor(call);
 afs_free_call(call);
 _leave(" = %d", ret);
 return ret;
}
