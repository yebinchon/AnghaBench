
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {scalar_t__ len; int dev; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_5__ {TYPE_1__ dst; } ;
struct rtable {scalar_t__ rt_type; TYPE_2__ u; } ;
struct iphdr {int ihl; int tos; int saddr; int daddr; } ;
struct ip_rt_acct {int i_bytes; int i_packets; int o_bytes; int o_packets; } ;
struct direct_tcp_stat {int input_route_fast; int input_route_slow; } ;
struct TYPE_6__ {int tclassid; } ;


 int EHOSTUNREACH ;
 int ENETUNREACH ;
 int IPSTATS_MIB_INADDRERRORS ;
 int IPSTATS_MIB_INBCAST ;
 int IPSTATS_MIB_INMCAST ;
 int IPSTATS_MIB_INNOROUTES ;
 int IP_INC_STATS_BH (int ,int ) ;
 int IP_UPD_PO_STATS_BH (int ,int ,scalar_t__) ;
 int NET_RX_DROP ;
 scalar_t__ RTN_BROADCAST ;
 scalar_t__ RTN_MULTICAST ;
 int dev_net (int ) ;
 int direct_tcp_stats ;
 int dst_input (struct sk_buff*) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 scalar_t__ ip_rcv_options (struct sk_buff*) ;
 int ip_route_input (struct sk_buff*,int ,int ,int ,int ) ;
 int ip_rt_acct ;
 int kfree_skb (struct sk_buff*) ;
 void* per_cpu_ptr (int ,int ) ;
 TYPE_3__* skb_dst (struct sk_buff*) ;
 struct rtable* skb_rtable (struct sk_buff*) ;
 int smp_processor_id () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ip_rcv_finish(struct sk_buff *skb)
{
 const struct iphdr *iph = ip_hdr(skb);
 struct rtable *rt;
 struct direct_tcp_stat *stat;

 stat = per_cpu_ptr(direct_tcp_stats, smp_processor_id());






 if (skb_dst(skb) == ((void*)0)) {
  int err = ip_route_input(skb, iph->daddr, iph->saddr, iph->tos,
      skb->dev);
  stat->input_route_slow++;


  if (unlikely(err)) {
   if (err == -EHOSTUNREACH)
    IP_INC_STATS_BH(dev_net(skb->dev),
      IPSTATS_MIB_INADDRERRORS);
   else if (err == -ENETUNREACH)
    IP_INC_STATS_BH(dev_net(skb->dev),
      IPSTATS_MIB_INNOROUTES);
   goto drop;
  }
 } else {
  stat->input_route_fast++;

 }
 if (iph->ihl > 5 && ip_rcv_options(skb))
  goto drop;

 rt = skb_rtable(skb);
 if (rt->rt_type == RTN_MULTICAST) {
  IP_UPD_PO_STATS_BH(dev_net(rt->u.dst.dev), IPSTATS_MIB_INMCAST,
    skb->len);
 } else if (rt->rt_type == RTN_BROADCAST)
  IP_UPD_PO_STATS_BH(dev_net(rt->u.dst.dev), IPSTATS_MIB_INBCAST,
    skb->len);

 return dst_input(skb);

drop:
 kfree_skb(skb);
 return NET_RX_DROP;
}
