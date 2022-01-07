
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dev; } ;
struct TYPE_2__ {int dev; } ;


 int ICMPV6_NOROUTE ;
 int IPSTATS_MIB_OUTNOROUTES ;
 int ip6_pkt_drop (struct sk_buff*,int ,int ) ;
 TYPE_1__* skb_dst (struct sk_buff*) ;

__attribute__((used)) static int ip6_pkt_discard_out(struct sk_buff *skb)
{
 skb->dev = skb_dst(skb)->dev;
 return ip6_pkt_drop(skb, ICMPV6_NOROUTE, IPSTATS_MIB_OUTNOROUTES);
}
