
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int mark; } ;
struct TYPE_2__ {int flags; int seq; } ;
struct rxrpc_skb_priv {TYPE_1__ hdr; } ;
struct rxrpc_call {scalar_t__ rx_first_oos; int lock; int rx_oos_queue; int rx_data_post; int flags; } ;


 int BUG_ON (int) ;
 int ECONNRESET ;
 int RXRPC_CALL_RELEASED ;
 int RXRPC_CLIENT_INITIATED ;
 int RXRPC_LAST_PACKET ;
 int RXRPC_SKB_MARK_DATA ;
 int _debug (char*,struct sk_buff*,...) ;
 int _enter (char*,int ,scalar_t__) ;
 int _leave (char*,int) ;
 scalar_t__ ntohl (int ) ;
 int rxrpc_queue_rcv_skb (struct rxrpc_call*,struct sk_buff*,int,int) ;
 struct rxrpc_skb_priv* rxrpc_skb (struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;
 struct sk_buff* skb_peek (int *) ;
 int skb_queue_head (int *,struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int rxrpc_drain_rx_oos_queue(struct rxrpc_call *call)
{
 struct rxrpc_skb_priv *sp;
 struct sk_buff *skb;
 bool terminal;
 int ret;

 _enter("{%d,%d}", call->rx_data_post, call->rx_first_oos);

 spin_lock_bh(&call->lock);

 ret = -ECONNRESET;
 if (test_bit(RXRPC_CALL_RELEASED, &call->flags))
  goto socket_unavailable;

 skb = skb_dequeue(&call->rx_oos_queue);
 if (skb) {
  sp = rxrpc_skb(skb);

  _debug("drain OOS packet %d [%d]",
         ntohl(sp->hdr.seq), call->rx_first_oos);

  if (ntohl(sp->hdr.seq) != call->rx_first_oos) {
   skb_queue_head(&call->rx_oos_queue, skb);
   call->rx_first_oos = ntohl(rxrpc_skb(skb)->hdr.seq);
   _debug("requeue %p {%u}", skb, call->rx_first_oos);
  } else {
   skb->mark = RXRPC_SKB_MARK_DATA;
   terminal = ((sp->hdr.flags & RXRPC_LAST_PACKET) &&
    !(sp->hdr.flags & RXRPC_CLIENT_INITIATED));
   ret = rxrpc_queue_rcv_skb(call, skb, 1, terminal);
   BUG_ON(ret < 0);
   _debug("drain #%u", call->rx_data_post);
   call->rx_data_post++;


   skb = skb_peek(&call->rx_oos_queue);
   if (skb)
    call->rx_first_oos =
     ntohl(rxrpc_skb(skb)->hdr.seq);
   else
    call->rx_first_oos = 0;
   _debug("peek %p {%u}", skb, call->rx_first_oos);
  }
 }

 ret = 0;
socket_unavailable:
 spin_unlock_bh(&call->lock);
 _leave(" = %d", ret);
 return ret;
}
