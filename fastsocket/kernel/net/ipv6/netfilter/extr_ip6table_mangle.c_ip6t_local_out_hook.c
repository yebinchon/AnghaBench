
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_int8_t ;
typedef scalar_t__ u_int32_t ;
struct sk_buff {int len; scalar_t__ mark; } ;
struct net_device {int dummy; } ;
struct iphdr {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef int saddr ;
typedef int daddr ;
struct TYPE_4__ {int ip6table_mangle; } ;
struct TYPE_6__ {TYPE_1__ ipv6; } ;
struct TYPE_5__ {scalar_t__ hop_limit; int daddr; int saddr; } ;


 unsigned int NF_ACCEPT ;
 unsigned int NF_DROP ;
 unsigned int NF_STOLEN ;
 TYPE_3__* dev_net (struct net_device const*) ;
 scalar_t__ ip6_route_me_harder (struct sk_buff*) ;
 unsigned int ip6t_do_table (struct sk_buff*,unsigned int,struct net_device const*,struct net_device const*,int ) ;
 int ip_hdrlen (struct sk_buff*) ;
 TYPE_2__* ipv6_hdr (struct sk_buff*) ;
 scalar_t__ memcmp (int *,struct in6_addr*,int) ;
 int memcpy (struct in6_addr*,int *,int) ;
 scalar_t__ net_ratelimit () ;
 int printk (char*) ;

__attribute__((used)) static unsigned int
ip6t_local_out_hook(unsigned int hook,
     struct sk_buff *skb,
     const struct net_device *in,
     const struct net_device *out,
     int (*okfn)(struct sk_buff *))
{

 unsigned int ret;
 struct in6_addr saddr, daddr;
 u_int8_t hop_limit;
 u_int32_t flowlabel, mark;
 memcpy(&saddr, &ipv6_hdr(skb)->saddr, sizeof(saddr));
 memcpy(&daddr, &ipv6_hdr(skb)->daddr, sizeof(daddr));
 mark = skb->mark;
 hop_limit = ipv6_hdr(skb)->hop_limit;


 flowlabel = *((u_int32_t *)ipv6_hdr(skb));

 ret = ip6t_do_table(skb, hook, in, out,
       dev_net(out)->ipv6.ip6table_mangle);

 if (ret != NF_DROP && ret != NF_STOLEN
  && (memcmp(&ipv6_hdr(skb)->saddr, &saddr, sizeof(saddr))
      || memcmp(&ipv6_hdr(skb)->daddr, &daddr, sizeof(daddr))
      || skb->mark != mark
      || ipv6_hdr(skb)->hop_limit != hop_limit))
  return ip6_route_me_harder(skb) == 0 ? ret : NF_DROP;

 return ret;
}
