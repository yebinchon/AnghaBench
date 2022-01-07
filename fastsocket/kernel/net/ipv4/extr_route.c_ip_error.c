
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_3__ {int error; unsigned long rate_tokens; unsigned long rate_last; int dev; } ;
struct TYPE_4__ {TYPE_1__ dst; } ;
struct rtable {TYPE_2__ u; } ;






 int ICMP_DEST_UNREACH ;
 int ICMP_HOST_UNREACH ;
 int ICMP_NET_UNREACH ;
 int ICMP_PKT_FILTERED ;
 int IPSTATS_MIB_INNOROUTES ;
 int IP_INC_STATS_BH (int ,int ) ;
 int dev_net (int ) ;
 int icmp_send (struct sk_buff*,int ,int,int ) ;
 scalar_t__ ip_rt_error_burst ;
 scalar_t__ ip_rt_error_cost ;
 unsigned long jiffies ;
 int kfree_skb (struct sk_buff*) ;
 struct rtable* skb_rtable (struct sk_buff*) ;

__attribute__((used)) static int ip_error(struct sk_buff *skb)
{
 struct rtable *rt = skb_rtable(skb);
 unsigned long now;
 int code;

 switch (rt->u.dst.error) {
  case 129:
  default:
   goto out;
  case 130:
   code = ICMP_HOST_UNREACH;
   break;
  case 128:
   code = ICMP_NET_UNREACH;
   IP_INC_STATS_BH(dev_net(rt->u.dst.dev),
     IPSTATS_MIB_INNOROUTES);
   break;
  case 131:
   code = ICMP_PKT_FILTERED;
   break;
 }

 now = jiffies;
 rt->u.dst.rate_tokens += now - rt->u.dst.rate_last;
 if (rt->u.dst.rate_tokens > ip_rt_error_burst)
  rt->u.dst.rate_tokens = ip_rt_error_burst;
 rt->u.dst.rate_last = now;
 if (rt->u.dst.rate_tokens >= ip_rt_error_cost) {
  rt->u.dst.rate_tokens -= ip_rt_error_cost;
  icmp_send(skb, ICMP_DEST_UNREACH, code, 0);
 }

out: kfree_skb(skb);
 return 0;
}
