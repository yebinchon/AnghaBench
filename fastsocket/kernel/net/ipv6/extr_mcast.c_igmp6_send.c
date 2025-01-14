
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct sock {int dummy; } ;
struct sk_buff {TYPE_3__* dev; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {struct sock* igmp_sk; } ;
struct net {TYPE_1__ ipv6; } ;
struct mld_msg {int mld_type; int mld_cksum; int mld_mca; } ;
struct ipv6hdr {int dummy; } ;
struct inet6_dev {int dummy; } ;
struct in6_addr {int dummy; } ;
struct icmp6hdr {int dummy; } ;
struct flowi {int dummy; } ;
struct dst_entry {int dummy; } ;
typedef int ra ;
struct TYPE_8__ {int ifindex; } ;
struct TYPE_7__ {int daddr; int saddr; } ;


 int ENOMEM ;
 int ICMP6MSGOUT_INC_STATS (struct net*,struct inet6_dev*,int) ;
 int ICMP6_INC_STATS (struct net*,struct inet6_dev*,int ) ;
 int ICMP6_MIB_OUTMSGS ;
 int ICMPV6_MGM_REDUCTION ;
 int IFA_F_TENTATIVE ;
 int IP6_INC_STATS (struct net*,struct inet6_dev*,int ) ;
 int IP6_UPD_PO_STATS (struct net*,struct inet6_dev*,int ,int) ;
 int IPPROTO_ICMPV6 ;
 int IPSTATS_MIB_OUT ;
 int IPSTATS_MIB_OUTDISCARDS ;
 int IPSTATS_MIB_OUTMCAST ;
 int IPV6_TLV_PADN ;
 int IPV6_TLV_ROUTERALERT ;
 scalar_t__ LL_ALLOCATED_SPACE (struct net_device*) ;
 int LL_RESERVED_SPACE (struct net_device*) ;
 int NEXTHDR_HOP ;
 int NF_HOOK (int ,int ,struct sk_buff*,int *,TYPE_3__*,int ) ;
 int NF_INET_LOCAL_OUT ;
 int PF_INET6 ;
 struct inet6_dev* __in6_dev_get (struct net_device*) ;
 int csum_ipv6_magic (struct in6_addr const*,struct in6_addr const*,int,int,int ) ;
 int csum_partial (struct mld_msg*,int,int ) ;
 struct net* dev_net (struct net_device*) ;
 int dst_output ;
 struct dst_entry* icmp6_dst_alloc (TYPE_3__*,int *,int *) ;
 int icmpv6_flow_init (struct sock*,struct flowi*,int,int *,int *,int ) ;
 struct inet6_dev* in6_dev_get (TYPE_3__*) ;
 int in6_dev_put (struct inet6_dev*) ;
 struct in6_addr in6addr_any ;
 struct in6_addr in6addr_linklocal_allrouters ;
 int ip6_nd_hdr (struct sock*,struct sk_buff*,struct net_device*,struct in6_addr const*,struct in6_addr const*,int ,int) ;
 int ipv6_addr_copy (int *,struct in6_addr*) ;
 scalar_t__ ipv6_get_lladdr (struct net_device*,struct in6_addr*,int ) ;
 TYPE_2__* ipv6_hdr (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ likely (int ) ;
 int memcpy (scalar_t__,int*,int) ;
 int memset (struct mld_msg*,int ,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int skb_dst_set (struct sk_buff*,struct dst_entry*) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int ) ;
 struct sk_buff* sock_alloc_send_skb (struct sock*,scalar_t__,int,int*) ;
 int xfrm_lookup (struct net*,struct dst_entry**,struct flowi*,int *,int ) ;

__attribute__((used)) static void igmp6_send(struct in6_addr *addr, struct net_device *dev, int type)
{
 struct net *net = dev_net(dev);
 struct sock *sk = net->ipv6.igmp_sk;
 struct inet6_dev *idev;
 struct sk_buff *skb;
 struct mld_msg *hdr;
 const struct in6_addr *snd_addr, *saddr;
 struct in6_addr addr_buf;
 int err, len, payload_len, full_len;
 u8 ra[8] = { IPPROTO_ICMPV6, 0,
       IPV6_TLV_ROUTERALERT, 2, 0, 0,
       IPV6_TLV_PADN, 0 };
 struct flowi fl;
 struct dst_entry *dst;

 if (type == ICMPV6_MGM_REDUCTION)
  snd_addr = &in6addr_linklocal_allrouters;
 else
  snd_addr = addr;

 len = sizeof(struct icmp6hdr) + sizeof(struct in6_addr);
 payload_len = len + sizeof(ra);
 full_len = sizeof(struct ipv6hdr) + payload_len;

 rcu_read_lock();
 IP6_UPD_PO_STATS(net, __in6_dev_get(dev),
        IPSTATS_MIB_OUT, full_len);
 rcu_read_unlock();

 skb = sock_alloc_send_skb(sk, LL_ALLOCATED_SPACE(dev) + full_len, 1, &err);

 if (skb == ((void*)0)) {
  rcu_read_lock();
  IP6_INC_STATS(net, __in6_dev_get(dev),
         IPSTATS_MIB_OUTDISCARDS);
  rcu_read_unlock();
  return;
 }

 skb_reserve(skb, LL_RESERVED_SPACE(dev));

 if (ipv6_get_lladdr(dev, &addr_buf, IFA_F_TENTATIVE)) {




  saddr = &in6addr_any;
 } else
  saddr = &addr_buf;

 ip6_nd_hdr(sk, skb, dev, saddr, snd_addr, NEXTHDR_HOP, payload_len);

 memcpy(skb_put(skb, sizeof(ra)), ra, sizeof(ra));

 hdr = (struct mld_msg *) skb_put(skb, sizeof(struct mld_msg));
 memset(hdr, 0, sizeof(struct mld_msg));
 hdr->mld_type = type;
 ipv6_addr_copy(&hdr->mld_mca, addr);

 hdr->mld_cksum = csum_ipv6_magic(saddr, snd_addr, len,
      IPPROTO_ICMPV6,
      csum_partial(hdr, len, 0));

 idev = in6_dev_get(skb->dev);

 dst = icmp6_dst_alloc(skb->dev, ((void*)0), &ipv6_hdr(skb)->daddr);
 if (!dst) {
  err = -ENOMEM;
  goto err_out;
 }

 icmpv6_flow_init(sk, &fl, type,
    &ipv6_hdr(skb)->saddr, &ipv6_hdr(skb)->daddr,
    skb->dev->ifindex);

 err = xfrm_lookup(net, &dst, &fl, ((void*)0), 0);
 if (err)
  goto err_out;

 skb_dst_set(skb, dst);
 err = NF_HOOK(PF_INET6, NF_INET_LOCAL_OUT, skb, ((void*)0), skb->dev,
        dst_output);
out:
 if (!err) {
  ICMP6MSGOUT_INC_STATS(net, idev, type);
  ICMP6_INC_STATS(net, idev, ICMP6_MIB_OUTMSGS);
  IP6_UPD_PO_STATS(net, idev, IPSTATS_MIB_OUTMCAST, full_len);
 } else
  IP6_INC_STATS(net, idev, IPSTATS_MIB_OUTDISCARDS);

 if (likely(idev != ((void*)0)))
  in6_dev_put(idev);
 return;

err_out:
 kfree_skb(skb);
 goto out;
}
