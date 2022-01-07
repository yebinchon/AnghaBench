
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_state {int dummy; } ;
struct sk_buff {int dummy; } ;
struct dst_entry {int header_len; TYPE_1__* dev; } ;
struct TYPE_2__ {int needed_tailroom; } ;


 int GFP_ATOMIC ;
 int LL_RESERVED_SPACE (TYPE_1__*) ;
 int pskb_expand_head (struct sk_buff*,int,int,int ) ;
 struct dst_entry* skb_dst (struct sk_buff*) ;
 int skb_headroom (struct sk_buff*) ;
 int skb_tailroom (struct sk_buff*) ;

__attribute__((used)) static int xfrm_state_check_space(struct xfrm_state *x, struct sk_buff *skb)
{
 struct dst_entry *dst = skb_dst(skb);
 int nhead = dst->header_len + LL_RESERVED_SPACE(dst->dev)
  - skb_headroom(skb);
 int ntail = dst->dev->needed_tailroom - skb_tailroom(skb);

 if (nhead <= 0) {
  if (ntail <= 0)
   return 0;
  nhead = 0;
 } else if (ntail < 0)
  ntail = 0;

 return pskb_expand_head(skb, nhead, ntail, GFP_ATOMIC);
}
