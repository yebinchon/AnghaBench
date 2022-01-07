
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_state {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {size_t nhoff; } ;


 TYPE_1__* IP6CB (struct sk_buff*) ;
 int* skb_network_header (struct sk_buff*) ;

__attribute__((used)) static int xfrm6_tunnel_input(struct xfrm_state *x, struct sk_buff *skb)
{
 return skb_network_header(skb)[IP6CB(skb)->nhoff];
}
