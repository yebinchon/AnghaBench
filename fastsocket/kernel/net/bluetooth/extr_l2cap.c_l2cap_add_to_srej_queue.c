
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ tx_seq; scalar_t__ sar; } ;


 int SREJ_QUEUE (struct sock*) ;
 int __skb_queue_before (int ,struct sk_buff*,struct sk_buff*) ;
 int __skb_queue_tail (int ,struct sk_buff*) ;
 TYPE_1__* bt_cb (struct sk_buff*) ;
 struct sk_buff* skb_peek (int ) ;
 scalar_t__ skb_queue_is_last (int ,struct sk_buff*) ;
 struct sk_buff* skb_queue_next (int ,struct sk_buff*) ;

__attribute__((used)) static void l2cap_add_to_srej_queue(struct sock *sk, struct sk_buff *skb, u8 tx_seq, u8 sar)
{
 struct sk_buff *next_skb;

 bt_cb(skb)->tx_seq = tx_seq;
 bt_cb(skb)->sar = sar;

 next_skb = skb_peek(SREJ_QUEUE(sk));
 if (!next_skb) {
  __skb_queue_tail(SREJ_QUEUE(sk), skb);
  return;
 }

 do {
  if (bt_cb(next_skb)->tx_seq > tx_seq) {
   __skb_queue_before(SREJ_QUEUE(sk), next_skb, skb);
   return;
  }

  if (skb_queue_is_last(SREJ_QUEUE(sk), next_skb))
   break;

 } while((next_skb = skb_queue_next(SREJ_QUEUE(sk), next_skb)));

 __skb_queue_tail(SREJ_QUEUE(sk), skb);
}
