
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {struct net_device* dev; int len; scalar_t__ sk; int protocol; } ;
struct net_device {int flags; } ;
struct ipv6_pinfo {scalar_t__ mc_loop; } ;
struct inet6_dev {int dummy; } ;
struct dst_entry {struct net_device* dev; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {scalar_t__ hop_limit; int saddr; int daddr; } ;


 int ETH_P_IPV6 ;
 int GFP_ATOMIC ;
 int IFF_LOOPBACK ;
 TYPE_2__* IP6CB (struct sk_buff*) ;
 int IP6SKB_FORWARDED ;
 int IP6_INC_STATS (int ,struct inet6_dev*,int ) ;
 int IP6_UPD_PO_STATS (int ,struct inet6_dev*,int ,int ) ;
 int IPSTATS_MIB_OUTDISCARDS ;
 int IPSTATS_MIB_OUTMCAST ;
 int NF_HOOK (int ,int ,struct sk_buff*,int *,struct net_device*,int ) ;
 int NF_INET_POST_ROUTING ;
 int PF_INET6 ;
 int dev_net (struct net_device*) ;
 int htons (int ) ;
 struct ipv6_pinfo* inet6_sk (scalar_t__) ;
 int ip6_dev_loopback_xmit ;
 struct inet6_dev* ip6_dst_idev (struct dst_entry*) ;
 int ip6_output_finish ;
 scalar_t__ ipv6_addr_is_multicast (int *) ;
 scalar_t__ ipv6_chk_mcast_addr (struct net_device*,int *,int *) ;
 TYPE_1__* ipv6_hdr (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ mroute6_socket (int ) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 struct dst_entry* skb_dst (struct sk_buff*) ;

__attribute__((used)) static int ip6_output2(struct sk_buff *skb)
{
 struct dst_entry *dst = skb_dst(skb);
 struct net_device *dev = dst->dev;

 skb->protocol = htons(ETH_P_IPV6);
 skb->dev = dev;

 if (ipv6_addr_is_multicast(&ipv6_hdr(skb)->daddr)) {
  struct ipv6_pinfo* np = skb->sk ? inet6_sk(skb->sk) : ((void*)0);
  struct inet6_dev *idev = ip6_dst_idev(skb_dst(skb));

  if (!(dev->flags & IFF_LOOPBACK) && (!np || np->mc_loop) &&
      ((mroute6_socket(dev_net(dev)) &&
       !(IP6CB(skb)->flags & IP6SKB_FORWARDED)) ||
       ipv6_chk_mcast_addr(dev, &ipv6_hdr(skb)->daddr,
      &ipv6_hdr(skb)->saddr))) {
   struct sk_buff *newskb = skb_clone(skb, GFP_ATOMIC);




   if (newskb)
    NF_HOOK(PF_INET6, NF_INET_POST_ROUTING, newskb,
     ((void*)0), newskb->dev,
     ip6_dev_loopback_xmit);

   if (ipv6_hdr(skb)->hop_limit == 0) {
    IP6_INC_STATS(dev_net(dev), idev,
           IPSTATS_MIB_OUTDISCARDS);
    kfree_skb(skb);
    return 0;
   }
  }

  IP6_UPD_PO_STATS(dev_net(dev), idev, IPSTATS_MIB_OUTMCAST,
    skb->len);
 }

 return NF_HOOK(PF_INET6, NF_INET_POST_ROUTING, skb, ((void*)0), skb->dev,
         ip6_output_finish);
}
