
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;


 int PF_INET6 ;
 int dev_net (struct net_device const*) ;
 unsigned int nf_conntrack_in (int ,int ,unsigned int,struct sk_buff*) ;

__attribute__((used)) static unsigned int ipv6_conntrack_in(unsigned int hooknum,
          struct sk_buff *skb,
          const struct net_device *in,
          const struct net_device *out,
          int (*okfn)(struct sk_buff *))
{
 return nf_conntrack_in(dev_net(in), PF_INET6, hooknum, skb);
}
