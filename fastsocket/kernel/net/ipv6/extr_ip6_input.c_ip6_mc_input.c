
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sk_buff {int data; int dev; int len; } ;
struct ipv6hdr {scalar_t__ nexthdr; int daddr; } ;
struct inet6_skb_parm {int flags; int ra; } ;
struct icmp6hdr {int icmp6_type; } ;
struct TYPE_8__ {TYPE_1__* devconf_all; } ;
struct TYPE_10__ {TYPE_2__ ipv6; } ;
struct TYPE_9__ {int dev; } ;
struct TYPE_7__ {scalar_t__ mc_forwarding; } ;


 int GFP_ATOMIC ;




 struct inet6_skb_parm* IP6CB (struct sk_buff*) ;
 int IP6SKB_FORWARDED ;
 int IP6_UPD_PO_STATS_BH (TYPE_5__*,int ,int ,int ) ;
 scalar_t__ IPPROTO_ICMPV6 ;
 int IPSTATS_MIB_INMCAST ;
 int IPV6_ADDR_LINKLOCAL ;
 TYPE_5__* dev_net (int ) ;
 int ip6_dst_idev (TYPE_3__*) ;
 int ip6_input (struct sk_buff*) ;
 int ip6_mr_input (struct sk_buff*) ;
 int ipv6_addr_type (int *) ;
 int ipv6_chk_mcast_addr (int ,int *,int *) ;
 int ipv6_ext_hdr (scalar_t__) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int ipv6_skip_exthdr (struct sk_buff*,int,scalar_t__*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ likely (int) ;
 int pskb_may_pull (struct sk_buff*,scalar_t__*) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 TYPE_3__* skb_dst (struct sk_buff*) ;
 scalar_t__* skb_network_header (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

int ip6_mc_input(struct sk_buff *skb)
{
 struct ipv6hdr *hdr;
 int deliver;

 IP6_UPD_PO_STATS_BH(dev_net(skb_dst(skb)->dev),
    ip6_dst_idev(skb_dst(skb)), IPSTATS_MIB_INMCAST,
    skb->len);

 hdr = ipv6_hdr(skb);
 deliver = ipv6_chk_mcast_addr(skb->dev, &hdr->daddr, ((void*)0));
 if (likely(deliver))
  ip6_input(skb);
 else {

  kfree_skb(skb);
 }

 return 0;
}
