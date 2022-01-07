
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct dst_entry {int dev; TYPE_1__* neighbour; scalar_t__ hh; } ;
struct TYPE_2__ {int (* output ) (struct sk_buff*) ;} ;


 int EINVAL ;
 int IP6_INC_STATS_BH (int ,int ,int ) ;
 int IPSTATS_MIB_OUTNOROUTES ;
 int dev_net (int ) ;
 int ip6_dst_idev (struct dst_entry*) ;
 int kfree_skb (struct sk_buff*) ;
 int neigh_hh_output (scalar_t__,struct sk_buff*) ;
 struct dst_entry* skb_dst (struct sk_buff*) ;
 int stub1 (struct sk_buff*) ;

__attribute__((used)) static int ip6_output_finish(struct sk_buff *skb)
{
 struct dst_entry *dst = skb_dst(skb);

 if (dst->hh)
  return neigh_hh_output(dst->hh, skb);
 else if (dst->neighbour)
  return dst->neighbour->output(skb);

 IP6_INC_STATS_BH(dev_net(dst->dev),
    ip6_dst_idev(dst), IPSTATS_MIB_OUTNOROUTES);
 kfree_skb(skb);
 return -EINVAL;

}
