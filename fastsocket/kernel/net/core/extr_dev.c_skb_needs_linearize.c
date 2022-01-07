
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ nr_frags; } ;


 int NETIF_F_FRAGLIST ;
 int NETIF_F_SG ;
 scalar_t__ skb_has_frag_list (struct sk_buff*) ;
 scalar_t__ skb_is_nonlinear (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static inline int skb_needs_linearize(struct sk_buff *skb,
          int features)
{
 return skb_is_nonlinear(skb) &&
   ((skb_has_frag_list(skb) &&
    !(features & NETIF_F_FRAGLIST)) ||
   (skb_shinfo(skb)->nr_frags &&
    !(features & NETIF_F_SG)));
}
