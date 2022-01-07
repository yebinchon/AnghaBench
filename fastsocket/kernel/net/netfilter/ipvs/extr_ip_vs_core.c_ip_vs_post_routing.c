
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int ipvs_property; } ;
struct net_device {int dummy; } ;


 unsigned int NF_ACCEPT ;
 unsigned int NF_STOP ;

__attribute__((used)) static unsigned int ip_vs_post_routing(unsigned int hooknum,
           struct sk_buff *skb,
           const struct net_device *in,
           const struct net_device *out,
           int (*okfn)(struct sk_buff *))
{
 if (!skb->ipvs_property)
  return NF_ACCEPT;

 return NF_STOP;
}
