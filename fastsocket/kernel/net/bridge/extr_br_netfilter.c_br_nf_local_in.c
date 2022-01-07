
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;


 unsigned int NF_ACCEPT ;
 int br_drop_fake_rtable (struct sk_buff*) ;

__attribute__((used)) static unsigned int br_nf_local_in(unsigned int hook, struct sk_buff *skb,
       const struct net_device *in,
       const struct net_device *out,
       int (*okfn)(struct sk_buff *))
{
 br_drop_fake_rtable(skb);
 return NF_ACCEPT;
}
