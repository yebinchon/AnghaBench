
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct sock* igmp_sk; } ;
struct net {TYPE_1__ ipv6; } ;
struct mld2_report {scalar_t__ mld2r_ngrec; scalar_t__ mld2r_resv2; scalar_t__ mld2r_cksum; scalar_t__ mld2r_resv1; int mld2r_type; } ;
struct in6_addr {int dummy; } ;
typedef int ra ;


 int ICMPV6_MLD2_REPORT ;
 int IFA_F_TENTATIVE ;
 int IPPROTO_ICMPV6 ;
 int IPV6_TLV_PADN ;
 int IPV6_TLV_ROUTERALERT ;
 scalar_t__ LL_ALLOCATED_SPACE (struct net_device*) ;
 int LL_RESERVED_SPACE (struct net_device*) ;
 int NEXTHDR_HOP ;
 struct net* dev_net (struct net_device*) ;
 struct in6_addr in6addr_any ;
 int ip6_nd_hdr (struct sock*,struct sk_buff*,struct net_device*,struct in6_addr const*,int *,int ,int ) ;
 scalar_t__ ipv6_get_lladdr (struct net_device*,struct in6_addr*,int ) ;
 int memcpy (int ,int*,int) ;
 int mld2_all_mcr ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int ) ;
 int skb_set_transport_header (struct sk_buff*,scalar_t__) ;
 scalar_t__ skb_tail_pointer (struct sk_buff*) ;
 scalar_t__ skb_transport_header (struct sk_buff*) ;
 struct sk_buff* sock_alloc_send_skb (struct sock*,scalar_t__,int,int*) ;

__attribute__((used)) static struct sk_buff *mld_newpack(struct net_device *dev, int size)
{
 struct net *net = dev_net(dev);
 struct sock *sk = net->ipv6.igmp_sk;
 struct sk_buff *skb;
 struct mld2_report *pmr;
 struct in6_addr addr_buf;
 const struct in6_addr *saddr;
 int err;
 u8 ra[8] = { IPPROTO_ICMPV6, 0,
       IPV6_TLV_ROUTERALERT, 2, 0, 0,
       IPV6_TLV_PADN, 0 };


 skb = sock_alloc_send_skb(sk, size + LL_ALLOCATED_SPACE(dev), 1, &err);

 if (!skb)
  return ((void*)0);

 skb_reserve(skb, LL_RESERVED_SPACE(dev));

 if (ipv6_get_lladdr(dev, &addr_buf, IFA_F_TENTATIVE)) {




  saddr = &in6addr_any;
 } else
  saddr = &addr_buf;

 ip6_nd_hdr(sk, skb, dev, saddr, &mld2_all_mcr, NEXTHDR_HOP, 0);

 memcpy(skb_put(skb, sizeof(ra)), ra, sizeof(ra));

 skb_set_transport_header(skb, skb_tail_pointer(skb) - skb->data);
 skb_put(skb, sizeof(*pmr));
 pmr = (struct mld2_report *)skb_transport_header(skb);
 pmr->mld2r_type = ICMPV6_MLD2_REPORT;
 pmr->mld2r_resv1 = 0;
 pmr->mld2r_cksum = 0;
 pmr->mld2r_resv2 = 0;
 pmr->mld2r_ngrec = 0;
 return skb;
}
