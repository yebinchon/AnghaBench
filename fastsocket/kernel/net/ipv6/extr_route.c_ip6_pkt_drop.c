
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dev; } ;
struct dst_entry {int dev; } ;
struct TYPE_2__ {int daddr; } ;


 int ICMPV6_DEST_UNREACH ;
 int IP6_INC_STATS (int ,int ,int) ;
 int IPSTATS_MIB_INADDRERRORS ;


 int IPV6_ADDR_ANY ;
 int dev_net (int ) ;
 int icmpv6_send (struct sk_buff*,int ,int ,int ,int ) ;
 int ip6_dst_idev (struct dst_entry*) ;
 int ipv6_addr_type (int *) ;
 TYPE_1__* ipv6_hdr (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 struct dst_entry* skb_dst (struct sk_buff*) ;

__attribute__((used)) static int ip6_pkt_drop(struct sk_buff *skb, u8 code, int ipstats_mib_noroutes)
{
 int type;
 struct dst_entry *dst = skb_dst(skb);
 switch (ipstats_mib_noroutes) {
 case 129:
  type = ipv6_addr_type(&ipv6_hdr(skb)->daddr);
  if (type == IPV6_ADDR_ANY) {
   IP6_INC_STATS(dev_net(dst->dev), ip6_dst_idev(dst),
          IPSTATS_MIB_INADDRERRORS);
   break;
  }

 case 128:
  IP6_INC_STATS(dev_net(dst->dev), ip6_dst_idev(dst),
         ipstats_mib_noroutes);
  break;
 }
 icmpv6_send(skb, ICMPV6_DEST_UNREACH, code, 0, skb->dev);
 kfree_skb(skb);
 return 0;
}
