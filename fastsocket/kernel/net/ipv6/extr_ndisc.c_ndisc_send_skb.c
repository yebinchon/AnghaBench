
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sock {int dummy; } ;
struct sk_buff {int len; } ;
struct net_device {int ifindex; } ;
struct TYPE_2__ {struct sock* ndisc_sk; } ;
struct net {TYPE_1__ ipv6; } ;
struct neighbour {int dummy; } ;
struct inet6_dev {int dummy; } ;
struct in6_addr {int dummy; } ;
struct icmp6hdr {int icmp6_type; } ;
struct flowi {int dummy; } ;
struct dst_entry {int dev; } ;


 int ICMP6MSGOUT_INC_STATS (struct net*,struct inet6_dev*,int ) ;
 int ICMP6_INC_STATS (struct net*,struct inet6_dev*,int ) ;
 int ICMP6_MIB_OUTMSGS ;
 int IP6_UPD_PO_STATS (struct net*,struct inet6_dev*,int ,int ) ;
 int IPSTATS_MIB_OUT ;
 int NF_HOOK (int ,int ,struct sk_buff*,int *,int ,int ) ;
 int NF_INET_LOCAL_OUT ;
 int PF_INET6 ;
 struct net* dev_net (struct net_device*) ;
 int dst_output ;
 struct dst_entry* icmp6_dst_alloc (struct net_device*,struct neighbour*,struct in6_addr const*) ;
 int icmpv6_flow_init (struct sock*,struct flowi*,int ,struct in6_addr const*,struct in6_addr const*,int ) ;
 struct inet6_dev* in6_dev_get (int ) ;
 int in6_dev_put (struct inet6_dev*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ likely (int ) ;
 int skb_dst_set (struct sk_buff*,struct dst_entry*) ;
 int xfrm_lookup (struct net*,struct dst_entry**,struct flowi*,int *,int ) ;

void ndisc_send_skb(struct sk_buff *skb,
      struct net_device *dev,
      struct neighbour *neigh,
      const struct in6_addr *daddr,
      const struct in6_addr *saddr,
      struct icmp6hdr *icmp6h)
{
 struct flowi fl;
 struct dst_entry *dst;
 struct net *net = dev_net(dev);
 struct sock *sk = net->ipv6.ndisc_sk;
 struct inet6_dev *idev;
 int err;
 u8 type;

 type = icmp6h->icmp6_type;

 icmpv6_flow_init(sk, &fl, type, saddr, daddr, dev->ifindex);

 dst = icmp6_dst_alloc(dev, neigh, daddr);
 if (!dst) {
  kfree_skb(skb);
  return;
 }

 err = xfrm_lookup(net, &dst, &fl, ((void*)0), 0);
 if (err < 0) {
  kfree_skb(skb);
  return;
 }

 skb_dst_set(skb, dst);

 idev = in6_dev_get(dst->dev);
 IP6_UPD_PO_STATS(net, idev, IPSTATS_MIB_OUT, skb->len);

 err = NF_HOOK(PF_INET6, NF_INET_LOCAL_OUT, skb, ((void*)0), dst->dev,
        dst_output);
 if (!err) {
  ICMP6MSGOUT_INC_STATS(net, idev, type);
  ICMP6_INC_STATS(net, idev, ICMP6_MIB_OUTMSGS);
 }

 if (likely(idev != ((void*)0)))
  in6_dev_put(idev);
}
