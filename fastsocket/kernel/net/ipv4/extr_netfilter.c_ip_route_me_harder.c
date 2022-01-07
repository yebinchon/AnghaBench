
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct sk_buff {TYPE_4__* sk; int mark; } ;
struct dst_entry {TYPE_6__* dev; scalar_t__ error; } ;
struct TYPE_10__ {struct dst_entry dst; } ;
struct rtable {TYPE_3__ u; } ;
struct net {int dummy; } ;
struct iphdr {int tos; int daddr; scalar_t__ saddr; } ;
struct TYPE_8__ {int tos; scalar_t__ saddr; int daddr; } ;
struct TYPE_9__ {TYPE_1__ ip4_u; } ;
struct flowi {int flags; int mark; int oif; TYPE_2__ nl_u; } ;
typedef int __u8 ;
typedef scalar_t__ __be32 ;
struct TYPE_13__ {int flags; } ;
struct TYPE_12__ {unsigned int hard_header_len; } ;
struct TYPE_11__ {int sk_bound_dev_if; } ;


 int AF_INET ;
 int FLOWI_FLAG_ANYSRC ;
 int GFP_ATOMIC ;
 TYPE_7__* IPCB (struct sk_buff*) ;
 int IPSKB_XFRM_TRANSFORMED ;
 unsigned int RTN_LOCAL ;
 unsigned int RTN_UNICAST ;
 unsigned int RTN_UNSPEC ;
 int RT_TOS (int ) ;
 struct net* dev_net (TYPE_6__*) ;
 unsigned int inet_addr_type (struct net*,scalar_t__) ;
 int inet_sk_flowi_flags (TYPE_4__*) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 scalar_t__ ip_route_output_key (struct net*,struct rtable**,struct flowi*) ;
 scalar_t__ pskb_expand_head (struct sk_buff*,unsigned int,int ,int ) ;
 struct dst_entry* skb_dst (struct sk_buff*) ;
 int skb_dst_drop (struct sk_buff*) ;
 int skb_dst_set (struct sk_buff*,struct dst_entry*) ;
 unsigned int skb_headroom (struct sk_buff*) ;
 scalar_t__ xfrm_decode_session (struct sk_buff*,struct flowi*,int ) ;
 scalar_t__ xfrm_lookup (struct net*,struct dst_entry**,struct flowi*,TYPE_4__*,int ) ;

int ip_route_me_harder(struct sk_buff *skb, unsigned addr_type)
{
 struct net *net = dev_net(skb_dst(skb)->dev);
 const struct iphdr *iph = ip_hdr(skb);
 struct rtable *rt;
 struct flowi fl = {};
 __be32 saddr = iph->saddr;
 __u8 flags = skb->sk ? inet_sk_flowi_flags(skb->sk) : 0;
 unsigned int hh_len;

 if (addr_type == RTN_UNSPEC)
  addr_type = inet_addr_type(net, saddr);
 if (addr_type == RTN_LOCAL || addr_type == RTN_UNICAST)
  flags |= FLOWI_FLAG_ANYSRC;
 else
  saddr = 0;




 fl.nl_u.ip4_u.daddr = iph->daddr;
 fl.nl_u.ip4_u.saddr = saddr;
 fl.nl_u.ip4_u.tos = RT_TOS(iph->tos);
 fl.oif = skb->sk ? skb->sk->sk_bound_dev_if : 0;
 fl.mark = skb->mark;
 fl.flags = flags;
 if (ip_route_output_key(net, &rt, &fl) != 0)
  return -1;


 skb_dst_drop(skb);
 skb_dst_set(skb, &rt->u.dst);

 if (skb_dst(skb)->error)
  return -1;
 hh_len = skb_dst(skb)->dev->hard_header_len;
 if (skb_headroom(skb) < hh_len &&
     pskb_expand_head(skb, hh_len - skb_headroom(skb), 0, GFP_ATOMIC))
  return -1;

 return 0;
}
