
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ ip_summed; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 int LINUX_MIB_XFRMOUTERROR ;
 int XFRM_INC_STATS (struct net*,int ) ;
 struct net* dev_net (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int skb_checksum_help (struct sk_buff*) ;
 TYPE_1__* skb_dst (struct sk_buff*) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;
 int xfrm_output2 (struct sk_buff*) ;
 int xfrm_output_gso (struct sk_buff*) ;

int xfrm_output(struct sk_buff *skb)
{
 struct net *net = dev_net(skb_dst(skb)->dev);
 int err;

 if (skb_is_gso(skb))
  return xfrm_output_gso(skb);

 if (skb->ip_summed == CHECKSUM_PARTIAL) {
  err = skb_checksum_help(skb);
  if (err) {
   XFRM_INC_STATS(net, LINUX_MIB_XFRMOUTERROR);
   kfree_skb(skb);
   return err;
  }
 }

 return xfrm_output2(skb);
}
