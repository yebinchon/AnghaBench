
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;


 unsigned int NF_ACCEPT ;
 int dnrmg_send_peer (struct sk_buff*) ;

__attribute__((used)) static unsigned int dnrmg_hook(unsigned int hook,
   struct sk_buff *skb,
   const struct net_device *in,
   const struct net_device *out,
   int (*okfn)(struct sk_buff *))
{
 dnrmg_send_peer(skb);
 return NF_ACCEPT;
}
