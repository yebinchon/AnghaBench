
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct sk_buff {int dummy; } ;
struct rxrpc_call {int dummy; } ;
struct afs_call {struct rxrpc_call* rxcall; TYPE_1__* type; int state; int rx_queue; int waitq; int * wait_mode; int async_work; } ;
struct TYPE_2__ {int name; } ;


 int AFS_CALL_AWAIT_OP_ID ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int IS_ERR (struct rxrpc_call*) ;
 int _debug (char*,...) ;
 TYPE_1__ afs_RXCMxxxx ;
 int afs_async_incoming_call ;
 int afs_free_call (struct afs_call*) ;
 int afs_free_skb (struct sk_buff*) ;
 int afs_incoming_calls ;
 int afs_outstanding_calls ;
 int afs_process_async_call ;
 int afs_socket ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int init_waitqueue_head (int *) ;
 struct afs_call* kzalloc (int,int ) ;
 struct rxrpc_call* rxrpc_kernel_accept_call (int ,unsigned long) ;
 int rxrpc_kernel_reject_call (int ) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_head_init (int *) ;

__attribute__((used)) static void afs_collect_incoming_call(struct work_struct *work)
{
 struct rxrpc_call *rxcall;
 struct afs_call *call = ((void*)0);
 struct sk_buff *skb;

 while ((skb = skb_dequeue(&afs_incoming_calls))) {
  _debug("new call");


  afs_free_skb(skb);

  if (!call) {
   call = kzalloc(sizeof(struct afs_call), GFP_KERNEL);
   if (!call) {
    rxrpc_kernel_reject_call(afs_socket);
    return;
   }

   INIT_WORK(&call->async_work, afs_process_async_call);
   call->wait_mode = &afs_async_incoming_call;
   call->type = &afs_RXCMxxxx;
   init_waitqueue_head(&call->waitq);
   skb_queue_head_init(&call->rx_queue);
   call->state = AFS_CALL_AWAIT_OP_ID;

   _debug("CALL %p{%s} [%d]",
          call, call->type->name,
          atomic_read(&afs_outstanding_calls));
   atomic_inc(&afs_outstanding_calls);
  }

  rxcall = rxrpc_kernel_accept_call(afs_socket,
        (unsigned long) call);
  if (!IS_ERR(rxcall)) {
   call->rxcall = rxcall;
   call = ((void*)0);
  }
 }

 if (call)
  afs_free_call(call);
}
