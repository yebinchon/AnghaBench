
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct net_device {int dummy; } ;
struct iphdr {int dummy; } ;


 unsigned int NF_ACCEPT ;
 int PF_INET ;
 int dev_net (struct net_device const*) ;
 int ip_hdrlen (struct sk_buff*) ;
 unsigned int nf_conntrack_in (int ,int ,unsigned int,struct sk_buff*) ;

__attribute__((used)) static unsigned int ipv4_conntrack_local(unsigned int hooknum,
      struct sk_buff *skb,
      const struct net_device *in,
      const struct net_device *out,
      int (*okfn)(struct sk_buff *))
{

 if (skb->len < sizeof(struct iphdr) ||
     ip_hdrlen(skb) < sizeof(struct iphdr))
  return NF_ACCEPT;
 return nf_conntrack_in(dev_net(out), PF_INET, hooknum, skb);
}
