
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct TYPE_6__ {int disable_ipv6; } ;
struct inet6_dev {TYPE_1__ cnf; } ;
struct TYPE_8__ {scalar_t__ frag_max_size; } ;
struct TYPE_7__ {int dev; } ;


 TYPE_5__* IP6CB (struct sk_buff*) ;
 int IP6_INC_STATS (int ,struct inet6_dev*,int ) ;
 int IPSTATS_MIB_OUTDISCARDS ;
 int dev_net (int ) ;
 scalar_t__ dst_allfrag (TYPE_2__*) ;
 struct inet6_dev* ip6_dst_idev (TYPE_2__*) ;
 int ip6_fragment (struct sk_buff*,int (*) (struct sk_buff*)) ;
 int ip6_output2 (struct sk_buff*) ;
 scalar_t__ ip6_skb_dst_mtu (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 TYPE_2__* skb_dst (struct sk_buff*) ;
 int skb_is_gso (struct sk_buff*) ;
 scalar_t__ unlikely (int ) ;

int ip6_output(struct sk_buff *skb)
{
 struct inet6_dev *idev = ip6_dst_idev(skb_dst(skb));
 if (unlikely(idev->cnf.disable_ipv6)) {
  IP6_INC_STATS(dev_net(skb_dst(skb)->dev), idev,
         IPSTATS_MIB_OUTDISCARDS);
  kfree_skb(skb);
  return 0;
 }

 if ((skb->len > ip6_skb_dst_mtu(skb) && !skb_is_gso(skb)) ||
     dst_allfrag(skb_dst(skb)) ||
     (IP6CB(skb)->frag_max_size && skb->len > IP6CB(skb)->frag_max_size))
  return ip6_fragment(skb, ip6_output2);
 else
  return ip6_output2(skb);
}
