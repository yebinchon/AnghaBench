
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {TYPE_7__* dev; } ;
struct TYPE_10__ {TYPE_7__* dev; } ;
struct TYPE_11__ {TYPE_1__ dst; } ;
struct rtable {int rt_flags; TYPE_2__ u; } ;
struct iphdr {int tos; int saddr; int daddr; } ;
struct inet6_skb_parm {int dummy; } ;
struct flowi {int fl4_tos; int fl4_src; int fl4_dst; int proto; } ;
struct dst_entry {int dummy; } ;
typedef int fl ;
typedef scalar_t__ __u32 ;
typedef int __be32 ;
struct TYPE_15__ {scalar_t__ type; } ;
struct TYPE_14__ {TYPE_4__* ops; TYPE_3__* dev; } ;
struct TYPE_13__ {int (* update_pmtu ) (TYPE_5__*,scalar_t__) ;} ;
struct TYPE_12__ {scalar_t__ type; } ;


 scalar_t__ ARPHRD_TUNNEL ;
 int GFP_ATOMIC ;
 int ICMPV6_ADDR_UNREACH ;


 int ICMP_DEST_UNREACH ;
 int ICMP_FRAG_NEEDED ;
 int ICMP_HOST_UNREACH ;
 int IPPROTO_IPIP ;
 int RTCF_LOCAL ;
 int RT_TOS (int ) ;
 int dev_net (TYPE_7__*) ;
 scalar_t__ dst_mtu (TYPE_5__*) ;
 int htonl (scalar_t__) ;
 int icmp_send (struct sk_buff*,int,int,int ) ;
 int ip6_tnl_err (struct sk_buff*,int ,struct inet6_skb_parm*,int*,int*,int*,scalar_t__*,int) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 scalar_t__ ip_route_input (struct sk_buff*,int ,int ,int ,TYPE_7__*) ;
 scalar_t__ ip_route_output_key (int ,struct rtable**,struct flowi*) ;
 int ip_rt_put (struct rtable*) ;
 int kfree_skb (struct sk_buff*) ;
 int memset (struct flowi*,int ,int) ;
 scalar_t__ ntohl (int ) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 TYPE_5__* skb_dst (struct sk_buff*) ;
 int skb_dst_drop (struct sk_buff*) ;
 int skb_dst_set (struct sk_buff*,struct dst_entry*) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int stub1 (TYPE_5__*,scalar_t__) ;

__attribute__((used)) static int
ip4ip6_err(struct sk_buff *skb, struct inet6_skb_parm *opt,
    u8 type, u8 code, int offset, __be32 info)
{
 int rel_msg = 0;
 u8 rel_type = type;
 u8 rel_code = code;
 __u32 rel_info = ntohl(info);
 int err;
 struct sk_buff *skb2;
 struct iphdr *eiph;
 struct flowi fl;
 struct rtable *rt;

 err = ip6_tnl_err(skb, IPPROTO_IPIP, opt, &rel_type, &rel_code,
     &rel_msg, &rel_info, offset);
 if (err < 0)
  return err;

 if (rel_msg == 0)
  return 0;

 switch (rel_type) {
 case 129:
  if (rel_code != ICMPV6_ADDR_UNREACH)
   return 0;
  rel_type = ICMP_DEST_UNREACH;
  rel_code = ICMP_HOST_UNREACH;
  break;
 case 128:
  if (rel_code != 0)
   return 0;
  rel_type = ICMP_DEST_UNREACH;
  rel_code = ICMP_FRAG_NEEDED;
  break;
 default:
  return 0;
 }

 if (!pskb_may_pull(skb, offset + sizeof(struct iphdr)))
  return 0;

 skb2 = skb_clone(skb, GFP_ATOMIC);
 if (!skb2)
  return 0;

 skb_dst_drop(skb2);

 skb_pull(skb2, offset);
 skb_reset_network_header(skb2);
 eiph = ip_hdr(skb2);


 memset(&fl, 0, sizeof(fl));
 fl.fl4_dst = eiph->saddr;
 fl.fl4_tos = RT_TOS(eiph->tos);
 fl.proto = IPPROTO_IPIP;
 if (ip_route_output_key(dev_net(skb->dev), &rt, &fl))
  goto out;

 skb2->dev = rt->u.dst.dev;


 if (rt->rt_flags & RTCF_LOCAL) {
  ip_rt_put(rt);
  rt = ((void*)0);
  fl.fl4_dst = eiph->daddr;
  fl.fl4_src = eiph->saddr;
  fl.fl4_tos = eiph->tos;
  if (ip_route_output_key(dev_net(skb->dev), &rt, &fl) ||
      rt->u.dst.dev->type != ARPHRD_TUNNEL) {
   ip_rt_put(rt);
   goto out;
  }
  skb_dst_set(skb2, (struct dst_entry *)rt);
 } else {
  ip_rt_put(rt);
  if (ip_route_input(skb2, eiph->daddr, eiph->saddr, eiph->tos,
       skb2->dev) ||
      skb_dst(skb2)->dev->type != ARPHRD_TUNNEL)
   goto out;
 }


 if (rel_type == ICMP_DEST_UNREACH && rel_code == ICMP_FRAG_NEEDED) {
  if (rel_info > dst_mtu(skb_dst(skb2)))
   goto out;

  skb_dst(skb2)->ops->update_pmtu(skb_dst(skb2), rel_info);
 }

 icmp_send(skb2, rel_type, rel_code, htonl(rel_info));

out:
 kfree_skb(skb2);
 return 0;
}
