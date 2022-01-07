
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tnl_ptk_info {int flags; scalar_t__ key; scalar_t__ seq; int proto; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct gre_base_hdr {int protocol; int flags; } ;
typedef int __sum16 ;
typedef scalar_t__ __be32 ;
struct TYPE_2__ {int gso_type; } ;


 int SKB_GSO_GRE ;
 int TUNNEL_CSUM ;
 int TUNNEL_KEY ;
 int TUNNEL_SEQ ;
 int csum_fold (int ) ;
 int skb_checksum (struct sk_buff*,int ,int ,int ) ;
 int skb_push (struct sk_buff*,int) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int tnl_flags_to_gre_flags (int) ;

void gre_build_header(struct sk_buff *skb, const struct tnl_ptk_info *tpi,
        int hdr_len)
{
 struct gre_base_hdr *greh;

 skb_push(skb, hdr_len);

 greh = (struct gre_base_hdr *)skb->data;
 greh->flags = tnl_flags_to_gre_flags(tpi->flags);
 greh->protocol = tpi->proto;

 if (tpi->flags&(TUNNEL_KEY|TUNNEL_CSUM|TUNNEL_SEQ)) {
  __be32 *ptr = (__be32 *)(((u8 *)greh) + hdr_len - 4);

  if (tpi->flags&TUNNEL_SEQ) {
   *ptr = tpi->seq;
   ptr--;
  }
  if (tpi->flags&TUNNEL_KEY) {
   *ptr = tpi->key;
   ptr--;
  }
  if (tpi->flags&TUNNEL_CSUM &&
      !(skb_shinfo(skb)->gso_type & SKB_GSO_GRE)) {
   *ptr = 0;
   *(__sum16 *)ptr = csum_fold(skb_checksum(skb, 0,
         skb->len, 0));
  }
 }
}
