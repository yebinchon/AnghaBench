
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sk_buff {scalar_t__ mark; } ;
struct rxrpc_skb_priv {struct rxrpc_call* call; scalar_t__ error; } ;
struct rxrpc_call {int lock; int flags; int ack_timer; int resend_timer; int debug_id; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int GFP_NOFS ;
 int RXRPC_CALL_HAS_USERID ;
 int RXRPC_CALL_RUN_RTIMER ;
 int RXRPC_CALL_TERMINAL_MSG ;
 scalar_t__ RXRPC_SKB_MARK_NEW_CALL ;
 int _enter (char*,int ,int ,scalar_t__,scalar_t__,int) ;
 int _leave (char*) ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int clear_bit (int ,int *) ;
 int del_timer_sync (int *) ;
 int memset (struct rxrpc_skb_priv*,int ,int) ;
 int rxrpc_get_call (struct rxrpc_call*) ;
 int rxrpc_new_skb (struct sk_buff*) ;
 int rxrpc_queue_rcv_skb (struct rxrpc_call*,struct sk_buff*,int,int) ;
 struct rxrpc_skb_priv* rxrpc_skb (struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int rxrpc_post_message(struct rxrpc_call *call, u32 mark, u32 error,
         bool fatal)
{
 struct rxrpc_skb_priv *sp;
 struct sk_buff *skb;
 int ret;

 _enter("{%d,%lx},%u,%u,%d",
        call->debug_id, call->flags, mark, error, fatal);


 if (fatal) {
  del_timer_sync(&call->resend_timer);
  del_timer_sync(&call->ack_timer);
  clear_bit(RXRPC_CALL_RUN_RTIMER, &call->flags);
 }

 if (mark != RXRPC_SKB_MARK_NEW_CALL &&
     !test_bit(RXRPC_CALL_HAS_USERID, &call->flags)) {
  _leave("[no userid]");
  return 0;
 }

 if (!test_bit(RXRPC_CALL_TERMINAL_MSG, &call->flags)) {
  skb = alloc_skb(0, GFP_NOFS);
  if (!skb)
   return -ENOMEM;

  rxrpc_new_skb(skb);

  skb->mark = mark;

  sp = rxrpc_skb(skb);
  memset(sp, 0, sizeof(*sp));
  sp->error = error;
  sp->call = call;
  rxrpc_get_call(call);

  spin_lock_bh(&call->lock);
  ret = rxrpc_queue_rcv_skb(call, skb, 1, fatal);
  spin_unlock_bh(&call->lock);
  BUG_ON(ret < 0);
 }

 return 0;
}
