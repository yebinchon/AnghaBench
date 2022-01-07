
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_3__ {unsigned short va; int modulus; int ack_queue; } ;
typedef TYPE_1__ ax25_cb ;


 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int * skb_peek (int *) ;

void ax25_frames_acked(ax25_cb *ax25, unsigned short nr)
{
 struct sk_buff *skb;




 if (ax25->va != nr) {
  while (skb_peek(&ax25->ack_queue) != ((void*)0) && ax25->va != nr) {
   skb = skb_dequeue(&ax25->ack_queue);
   kfree_skb(skb);
   ax25->va = (ax25->va + 1) % ax25->modulus;
  }
 }
}
