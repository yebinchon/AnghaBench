
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ mtu; } ;


 int ETH_HLEN ;
 int br_drop_fake_rtable (struct sk_buff*) ;
 int dev_queue_xmit (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ nf_bridge_maybe_copy_header (struct sk_buff*) ;
 scalar_t__ packet_length (struct sk_buff*) ;
 int skb_is_gso (struct sk_buff*) ;
 int skb_push (struct sk_buff*,int ) ;

int br_dev_queue_push_xmit(struct sk_buff *skb)
{

 if (packet_length(skb) > skb->dev->mtu && !skb_is_gso(skb))
  kfree_skb(skb);
 else {

  if (nf_bridge_maybe_copy_header(skb))
   kfree_skb(skb);
  else {
   skb_push(skb, ETH_HLEN);
   br_drop_fake_rtable(skb);
   dev_queue_xmit(skb);
  }
 }

 return 0;
}
