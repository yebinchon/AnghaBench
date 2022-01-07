
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct net_device {int dummy; } ;
struct iphdr {int dummy; } ;
struct TYPE_3__ {int ip6table_filter; } ;
struct TYPE_4__ {TYPE_1__ ipv6; } ;


 unsigned int NF_ACCEPT ;
 TYPE_2__* dev_net (struct net_device const*) ;
 unsigned int ip6t_do_table (struct sk_buff*,unsigned int,struct net_device const*,struct net_device const*,int ) ;
 int ip_hdrlen (struct sk_buff*) ;
 scalar_t__ net_ratelimit () ;
 int printk (char*) ;

__attribute__((used)) static unsigned int
ip6t_local_out_hook(unsigned int hook,
     struct sk_buff *skb,
     const struct net_device *in,
     const struct net_device *out,
     int (*okfn)(struct sk_buff *))
{
 return ip6t_do_table(skb, hook, in, out,
        dev_net(out)->ipv6.ip6table_filter);
}
