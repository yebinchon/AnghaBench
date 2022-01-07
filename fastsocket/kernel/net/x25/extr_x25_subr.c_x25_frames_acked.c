
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x25_sock {unsigned short va; int ack_queue; TYPE_1__* neighbour; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ extended; } ;


 int X25_EMODULUS ;
 int X25_SMODULUS ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;
 scalar_t__ skb_peek (int *) ;
 struct x25_sock* x25_sk (struct sock*) ;

void x25_frames_acked(struct sock *sk, unsigned short nr)
{
 struct sk_buff *skb;
 struct x25_sock *x25 = x25_sk(sk);
 int modulus = x25->neighbour->extended ? X25_EMODULUS : X25_SMODULUS;




 if (x25->va != nr)
  while (skb_peek(&x25->ack_queue) && x25->va != nr) {
   skb = skb_dequeue(&x25->ack_queue);
   kfree_skb(skb);
   x25->va = (x25->va + 1) % modulus;
  }
}
