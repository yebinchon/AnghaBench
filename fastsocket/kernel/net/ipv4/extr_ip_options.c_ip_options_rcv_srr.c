
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ pkt_type; int dev; } ;
struct TYPE_3__ {int dst; } ;
struct rtable {scalar_t__ rt_type; TYPE_1__ u; } ;
struct iphdr {int daddr; int tos; int saddr; } ;
struct ip_options {int srr; int is_changed; int srr_is_hit; int is_strictroute; } ;
typedef int __be32 ;
struct TYPE_4__ {struct ip_options opt; } ;


 int EINVAL ;
 int ICMP_PARAMETERPROB ;
 TYPE_2__* IPCB (struct sk_buff*) ;
 scalar_t__ PACKET_HOST ;
 scalar_t__ RTN_LOCAL ;
 scalar_t__ RTN_UNICAST ;
 int htonl (int) ;
 int icmp_send (struct sk_buff*,int ,int ,int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ip_route_input (struct sk_buff*,int ,int ,int ,int ) ;
 int ip_rt_put (struct rtable*) ;
 int memcpy (int *,unsigned char*,int) ;
 int skb_dst_set (struct sk_buff*,int *) ;
 unsigned char* skb_network_header (struct sk_buff*) ;
 struct rtable* skb_rtable (struct sk_buff*) ;

int ip_options_rcv_srr(struct sk_buff *skb)
{
 struct ip_options *opt = &(IPCB(skb)->opt);
 int srrspace, srrptr;
 __be32 nexthop;
 struct iphdr *iph = ip_hdr(skb);
 unsigned char *optptr = skb_network_header(skb) + opt->srr;
 struct rtable *rt = skb_rtable(skb);
 struct rtable *rt2;
 int err;

 if (!opt->srr)
  return 0;

 if (skb->pkt_type != PACKET_HOST)
  return -EINVAL;
 if (rt->rt_type == RTN_UNICAST) {
  if (!opt->is_strictroute)
   return 0;
  icmp_send(skb, ICMP_PARAMETERPROB, 0, htonl(16<<24));
  return -EINVAL;
 }
 if (rt->rt_type != RTN_LOCAL)
  return -EINVAL;

 for (srrptr=optptr[2], srrspace = optptr[1]; srrptr <= srrspace; srrptr += 4) {
  if (srrptr + 3 > srrspace) {
   icmp_send(skb, ICMP_PARAMETERPROB, 0, htonl((opt->srr+2)<<24));
   return -EINVAL;
  }
  memcpy(&nexthop, &optptr[srrptr-1], 4);

  rt = skb_rtable(skb);
  skb_dst_set(skb, ((void*)0));
  err = ip_route_input(skb, nexthop, iph->saddr, iph->tos, skb->dev);
  rt2 = skb_rtable(skb);
  if (err || (rt2->rt_type != RTN_UNICAST && rt2->rt_type != RTN_LOCAL)) {
   ip_rt_put(rt2);
   skb_dst_set(skb, &rt->u.dst);
   return -EINVAL;
  }
  ip_rt_put(rt);
  if (rt2->rt_type != RTN_LOCAL)
   break;

  memcpy(&iph->daddr, &optptr[srrptr-1], 4);
  opt->is_changed = 1;
 }
 if (srrptr <= srrspace) {
  opt->srr_is_hit = 1;
  opt->is_changed = 1;
 }
 return 0;
}
