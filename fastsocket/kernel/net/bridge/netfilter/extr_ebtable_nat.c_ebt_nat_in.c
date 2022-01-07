
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int frame_nat; } ;
struct TYPE_4__ {TYPE_1__ xt; } ;


 TYPE_2__* dev_net (struct net_device const*) ;
 unsigned int ebt_do_table (unsigned int,struct sk_buff*,struct net_device const*,struct net_device const*,int ) ;

__attribute__((used)) static unsigned int
ebt_nat_in(unsigned int hook, struct sk_buff *skb, const struct net_device *in
   , const struct net_device *out, int (*okfn)(struct sk_buff *))
{
 return ebt_do_table(hook, skb, in, out, dev_net(in)->xt.frame_nat);
}
