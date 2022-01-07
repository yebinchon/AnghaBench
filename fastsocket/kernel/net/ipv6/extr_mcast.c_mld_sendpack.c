
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sk_buff {int len; int tail; int network_header; int transport_header; TYPE_2__* dev; } ;
struct TYPE_6__ {int igmp_sk; } ;
struct net {TYPE_1__ ipv6; } ;
struct mld2_report {int mld2r_cksum; } ;
struct ipv6hdr {int daddr; int saddr; int payload_len; } ;
struct inet6_dev {int dummy; } ;
struct flowi {int dummy; } ;
struct dst_entry {int dummy; } ;
struct TYPE_7__ {int ifindex; } ;


 int ENOMEM ;
 int ICMP6MSGOUT_INC_STATS_BH (struct net*,struct inet6_dev*,int ) ;
 int ICMP6_INC_STATS_BH (struct net*,struct inet6_dev*,int ) ;
 int ICMP6_MIB_OUTMSGS ;
 int ICMPV6_MLD2_REPORT ;
 int IP6_INC_STATS_BH (struct net*,struct inet6_dev*,int ) ;
 int IP6_UPD_PO_STATS (struct net*,struct inet6_dev*,int ,int) ;
 int IP6_UPD_PO_STATS_BH (struct net*,struct inet6_dev*,int ,int) ;
 int IPPROTO_ICMPV6 ;
 int IPSTATS_MIB_OUT ;
 int IPSTATS_MIB_OUTDISCARDS ;
 int IPSTATS_MIB_OUTMCAST ;
 int NF_HOOK (int ,int ,struct sk_buff*,int *,TYPE_2__*,int ) ;
 int NF_INET_LOCAL_OUT ;
 int PF_INET6 ;
 int csum_ipv6_magic (int *,int *,int,int ,int ) ;
 int csum_partial (scalar_t__,int,int ) ;
 struct net* dev_net (TYPE_2__*) ;
 int dst_output ;
 int htons (int) ;
 struct dst_entry* icmp6_dst_alloc (TYPE_2__*,int *,int *) ;
 int icmpv6_flow_init (int ,struct flowi*,int ,int *,int *,int ) ;
 struct inet6_dev* in6_dev_get (TYPE_2__*) ;
 int in6_dev_put (struct inet6_dev*) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ likely (int ) ;
 int skb_dst_set (struct sk_buff*,struct dst_entry*) ;
 scalar_t__ skb_transport_header (struct sk_buff*) ;
 int xfrm_lookup (struct net*,struct dst_entry**,struct flowi*,int *,int ) ;

__attribute__((used)) static void mld_sendpack(struct sk_buff *skb)
{
 struct ipv6hdr *pip6 = ipv6_hdr(skb);
 struct mld2_report *pmr =
         (struct mld2_report *)skb_transport_header(skb);
 int payload_len, mldlen;
 struct inet6_dev *idev = in6_dev_get(skb->dev);
 struct net *net = dev_net(skb->dev);
 int err;
 struct flowi fl;
 struct dst_entry *dst;

 IP6_UPD_PO_STATS(net, idev, IPSTATS_MIB_OUT, skb->len);

 payload_len = (skb->tail - skb->network_header) - sizeof(*pip6);
 mldlen = skb->tail - skb->transport_header;
 pip6->payload_len = htons(payload_len);

 pmr->mld2r_cksum = csum_ipv6_magic(&pip6->saddr, &pip6->daddr, mldlen,
        IPPROTO_ICMPV6,
        csum_partial(skb_transport_header(skb),
       mldlen, 0));

 dst = icmp6_dst_alloc(skb->dev, ((void*)0), &ipv6_hdr(skb)->daddr);

 if (!dst) {
  err = -ENOMEM;
  goto err_out;
 }

 icmpv6_flow_init(net->ipv6.igmp_sk, &fl, ICMPV6_MLD2_REPORT,
    &ipv6_hdr(skb)->saddr, &ipv6_hdr(skb)->daddr,
    skb->dev->ifindex);

 err = xfrm_lookup(net, &dst, &fl, ((void*)0), 0);
 skb_dst_set(skb, dst);
 if (err)
  goto err_out;

 payload_len = skb->len;

 err = NF_HOOK(PF_INET6, NF_INET_LOCAL_OUT, skb, ((void*)0), skb->dev,
        dst_output);
out:
 if (!err) {
  ICMP6MSGOUT_INC_STATS_BH(net, idev, ICMPV6_MLD2_REPORT);
  ICMP6_INC_STATS_BH(net, idev, ICMP6_MIB_OUTMSGS);
  IP6_UPD_PO_STATS_BH(net, idev, IPSTATS_MIB_OUTMCAST, payload_len);
 } else
  IP6_INC_STATS_BH(net, idev, IPSTATS_MIB_OUTDISCARDS);

 if (likely(idev != ((void*)0)))
  in6_dev_put(idev);
 return;

err_out:
 kfree_skb(skb);
 goto out;
}
