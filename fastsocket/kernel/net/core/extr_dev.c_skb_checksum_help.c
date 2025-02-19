
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ ip_summed; int csum_start; scalar_t__ data; scalar_t__ csum_offset; scalar_t__ len; } ;
typedef int __wsum ;
typedef int __sum16 ;
struct TYPE_2__ {int gso_size; } ;


 int BUG_ON (int) ;
 scalar_t__ CHECKSUM_COMPLETE ;
 scalar_t__ CHECKSUM_NONE ;
 int EINVAL ;
 int GFP_ATOMIC ;
 int __skb_linearize (struct sk_buff*) ;
 int csum_fold (int ) ;
 int pskb_expand_head (struct sk_buff*,int ,int ,int ) ;
 int skb_checksum (struct sk_buff*,int,scalar_t__,int ) ;
 int skb_clone_writable (struct sk_buff*,int) ;
 scalar_t__ skb_cloned (struct sk_buff*) ;
 scalar_t__ skb_has_shared_frag (struct sk_buff*) ;
 int skb_headlen (struct sk_buff*) ;
 int skb_headroom (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int skb_warn_bad_offload (struct sk_buff*) ;
 scalar_t__ unlikely (int ) ;

int skb_checksum_help(struct sk_buff *skb)
{
 __wsum csum;
 int ret = 0, offset;

 if (skb->ip_summed == CHECKSUM_COMPLETE)
  goto out_set_summed;

 if (unlikely(skb_shinfo(skb)->gso_size)) {
  skb_warn_bad_offload(skb);
  return -EINVAL;
 }




 if (skb_has_shared_frag(skb)) {
  ret = __skb_linearize(skb);
  if (ret)
   goto out;
 }

 offset = skb->csum_start - skb_headroom(skb);
 BUG_ON(offset >= skb_headlen(skb));
 csum = skb_checksum(skb, offset, skb->len - offset, 0);

 offset += skb->csum_offset;
 BUG_ON(offset + sizeof(__sum16) > skb_headlen(skb));

 if (skb_cloned(skb) &&
     !skb_clone_writable(skb, offset + sizeof(__sum16))) {
  ret = pskb_expand_head(skb, 0, 0, GFP_ATOMIC);
  if (ret)
   goto out;
 }

 *(__sum16 *)(skb->data + offset) = csum_fold(csum);
out_set_summed:
 skb->ip_summed = CHECKSUM_NONE;
out:
 return ret;
}
