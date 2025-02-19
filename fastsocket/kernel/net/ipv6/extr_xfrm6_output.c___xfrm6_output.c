
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mode; } ;
struct xfrm_state {TYPE_1__ props; } ;
struct sk_buff {scalar_t__ len; } ;
struct dst_entry {struct xfrm_state* xfrm; } ;


 scalar_t__ XFRM_MODE_TUNNEL ;
 scalar_t__ dst_allfrag (struct dst_entry*) ;
 int ip6_fragment (struct sk_buff*,int (*) (struct sk_buff*)) ;
 scalar_t__ ip6_skb_dst_mtu (struct sk_buff*) ;
 struct dst_entry* skb_dst (struct sk_buff*) ;
 int skb_is_gso (struct sk_buff*) ;
 int xfrm6_output_finish (struct sk_buff*) ;

__attribute__((used)) static int __xfrm6_output(struct sk_buff *skb)
{
 struct dst_entry *dst = skb_dst(skb);
 struct xfrm_state *x = dst->xfrm;

 if ((x && x->props.mode == XFRM_MODE_TUNNEL) &&
     ((skb->len > ip6_skb_dst_mtu(skb) && !skb_is_gso(skb)) ||
  dst_allfrag(skb_dst(skb)))) {
   return ip6_fragment(skb, xfrm6_output_finish);
 }
 return xfrm6_output_finish(skb);
}
