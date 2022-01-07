
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ protocol; } ;


 scalar_t__ IPPROTO_ICMP ;
 unsigned int NF_ACCEPT ;
 TYPE_1__* ip_hdr (struct sk_buff*) ;
 unsigned int ip_vs_in_icmp (struct sk_buff*,int*,unsigned int) ;

__attribute__((used)) static unsigned int
ip_vs_forward_icmp(unsigned int hooknum, struct sk_buff *skb,
     const struct net_device *in, const struct net_device *out,
     int (*okfn)(struct sk_buff *))
{
 int r;

 if (ip_hdr(skb)->protocol != IPPROTO_ICMP)
  return NF_ACCEPT;

 return ip_vs_in_icmp(skb, &r, hooknum);
}
