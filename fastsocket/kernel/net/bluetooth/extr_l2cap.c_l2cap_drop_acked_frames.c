
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {scalar_t__ tx_seq; } ;
struct TYPE_3__ {scalar_t__ expected_ack_seq; int retrans_timer; int unacked_frames; } ;


 int TX_QUEUE (struct sock*) ;
 TYPE_2__* bt_cb (struct sk_buff*) ;
 int del_timer (int *) ;
 int kfree_skb (struct sk_buff*) ;
 TYPE_1__* l2cap_pi (struct sock*) ;
 struct sk_buff* skb_dequeue (int ) ;
 struct sk_buff* skb_peek (int ) ;

__attribute__((used)) static void l2cap_drop_acked_frames(struct sock *sk)
{
 struct sk_buff *skb;

 while ((skb = skb_peek(TX_QUEUE(sk)))) {
  if (bt_cb(skb)->tx_seq == l2cap_pi(sk)->expected_ack_seq)
   break;

  skb = skb_dequeue(TX_QUEUE(sk));
  kfree_skb(skb);

  l2cap_pi(sk)->unacked_frames--;
 }

 if (!l2cap_pi(sk)->unacked_frames)
  del_timer(&l2cap_pi(sk)->retrans_timer);

 return;
}
