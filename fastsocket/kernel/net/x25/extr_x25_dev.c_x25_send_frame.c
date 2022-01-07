
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x25_neigh {TYPE_1__* dev; } ;
struct sk_buff {TYPE_1__* dev; int protocol; } ;
struct TYPE_2__ {int type; } ;




 int ETH_P_X25 ;
 int dev_queue_xmit (struct sk_buff*) ;
 int htons (int ) ;
 int kfree_skb (struct sk_buff*) ;
 unsigned char* skb_push (struct sk_buff*,int) ;
 int skb_reset_network_header (struct sk_buff*) ;

void x25_send_frame(struct sk_buff *skb, struct x25_neigh *nb)
{
 unsigned char *dptr;

 skb_reset_network_header(skb);

 switch (nb->dev->type) {
  case 128:
   dptr = skb_push(skb, 1);
   *dptr = 0x00;
   break;






  default:
   kfree_skb(skb);
   return;
 }

 skb->protocol = htons(ETH_P_X25);
 skb->dev = nb->dev;

 dev_queue_xmit(skb);
}
