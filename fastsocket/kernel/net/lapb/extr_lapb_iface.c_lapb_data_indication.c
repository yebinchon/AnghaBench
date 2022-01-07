
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int (* data_indication ) (int ,struct sk_buff*) ;} ;
struct lapb_cb {int dev; TYPE_1__ callbacks; } ;


 int NET_RX_SUCCESS ;
 int kfree_skb (struct sk_buff*) ;
 int stub1 (int ,struct sk_buff*) ;

int lapb_data_indication(struct lapb_cb *lapb, struct sk_buff *skb)
{
 if (lapb->callbacks.data_indication)
  return lapb->callbacks.data_indication(lapb->dev, skb);

 kfree_skb(skb);
 return NET_RX_SUCCESS;
}
