
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int ip6table_raw; } ;
struct TYPE_4__ {TYPE_1__ ipv6; } ;


 TYPE_2__* dev_net (struct net_device const*) ;
 unsigned int ip6t_do_table (struct sk_buff*,unsigned int,struct net_device const*,struct net_device const*,int ) ;

__attribute__((used)) static unsigned int
ip6t_pre_routing_hook(unsigned int hook,
  struct sk_buff *skb,
  const struct net_device *in,
  const struct net_device *out,
  int (*okfn)(struct sk_buff *))
{
 return ip6t_do_table(skb, hook, in, out,
        dev_net(in)->ipv6.ip6table_raw);
}
