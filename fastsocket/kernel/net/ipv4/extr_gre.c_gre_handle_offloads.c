
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int encapsulation; scalar_t__ ip_summed; } ;
struct TYPE_2__ {int gso_type; } ;


 scalar_t__ CHECKSUM_NONE ;
 scalar_t__ CHECKSUM_PARTIAL ;
 struct sk_buff* ERR_PTR (int) ;
 int GFP_ATOMIC ;
 int SKB_GSO_GRE ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ likely (int) ;
 int skb_checksum_help (struct sk_buff*) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int skb_unclone (struct sk_buff*,int ) ;
 scalar_t__ unlikely (int) ;

struct sk_buff *gre_handle_offloads(struct sk_buff *skb, bool gre_csum)
{
 int err;

 if (likely(!skb->encapsulation)) {

  skb->encapsulation = 1;
 }

 if (skb_is_gso(skb)) {
  err = skb_unclone(skb, GFP_ATOMIC);
  if (unlikely(err))
   goto error;
  skb_shinfo(skb)->gso_type |= SKB_GSO_GRE;
  return skb;
 } else if (skb->ip_summed == CHECKSUM_PARTIAL && gre_csum) {
  err = skb_checksum_help(skb);
  if (unlikely(err))
   goto error;
 } else if (skb->ip_summed != CHECKSUM_PARTIAL)
  skb->ip_summed = CHECKSUM_NONE;

 return skb;
error:
 kfree_skb(skb);
 return ERR_PTR(err);
}
