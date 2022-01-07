
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {TYPE_1__* nf_bridge; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int mask; } ;


 int BRNF_NF_BRIDGE_PREROUTING ;
 unsigned int NF_ACCEPT ;
 unsigned int NF_STOP ;

__attribute__((used)) static unsigned int ip_sabotage_in(unsigned int hook, struct sk_buff *skb,
       const struct net_device *in,
       const struct net_device *out,
       int (*okfn)(struct sk_buff *))
{
 if (skb->nf_bridge &&
     !(skb->nf_bridge->mask & BRNF_NF_BRIDGE_PREROUTING)) {
  return NF_STOP;
 }

 return NF_ACCEPT;
}
