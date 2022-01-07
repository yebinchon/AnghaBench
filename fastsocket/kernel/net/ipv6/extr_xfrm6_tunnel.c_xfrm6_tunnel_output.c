
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_state {int dummy; } ;
struct sk_buff {int dummy; } ;


 int skb_network_offset (struct sk_buff*) ;
 int skb_push (struct sk_buff*,int ) ;

__attribute__((used)) static int xfrm6_tunnel_output(struct xfrm_state *x, struct sk_buff *skb)
{
 skb_push(skb, -skb_network_offset(skb));
 return 0;
}
