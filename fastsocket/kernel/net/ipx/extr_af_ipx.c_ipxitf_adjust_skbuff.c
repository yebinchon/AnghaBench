
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned char* head; int len; scalar_t__ cb; } ;
struct ipx_interface {int if_ipx_offset; } ;


 int GFP_ATOMIC ;
 struct sk_buff* alloc_skb (int,int ) ;
 scalar_t__ ipx_hdr (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (scalar_t__,scalar_t__,int) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int skb_reset_transport_header (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *ipxitf_adjust_skbuff(struct ipx_interface *intrfc,
         struct sk_buff *skb)
{
 struct sk_buff *skb2;
 int in_offset = (unsigned char *)ipx_hdr(skb) - skb->head;
 int out_offset = intrfc->if_ipx_offset;
 int len;


 if (in_offset >= out_offset)
  return skb;


 len = skb->len + out_offset;
 skb2 = alloc_skb(len, GFP_ATOMIC);
 if (skb2) {
  skb_reserve(skb2, out_offset);
  skb_reset_network_header(skb2);
  skb_reset_transport_header(skb2);
  skb_put(skb2, skb->len);
  memcpy(ipx_hdr(skb2), ipx_hdr(skb), skb->len);
  memcpy(skb2->cb, skb->cb, sizeof(skb->cb));
 }
 kfree_skb(skb);
 return skb2;
}
