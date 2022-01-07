
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x25_neigh {int state; int queue; } ;
struct sk_buff {int dummy; } ;






 int skb_queue_tail (int *,struct sk_buff*) ;
 int x25_establish_link (struct x25_neigh*) ;
 int x25_send_frame (struct sk_buff*,struct x25_neigh*) ;

void x25_transmit_link(struct sk_buff *skb, struct x25_neigh *nb)
{
 switch (nb->state) {
  case 131:
   skb_queue_tail(&nb->queue, skb);
   nb->state = 130;
   x25_establish_link(nb);
   break;
  case 130:
  case 129:
   skb_queue_tail(&nb->queue, skb);
   break;
  case 128:
   x25_send_frame(skb, nb);
   break;
 }
}
