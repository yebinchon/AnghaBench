
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct skb_frag_struct {int size; int page_offset; } ;
struct sk_buff {int len; int data_len; int truesize; int tail; int protocol; int csum; int ip_summed; int data; } ;
struct net_lro_mgr {int dev; int frag_align_pad; } ;
typedef int __wsum ;
struct TYPE_2__ {struct skb_frag_struct* frags; int nr_frags; } ;


 int eth_type_trans (struct sk_buff*,int ) ;
 int memcpy (int ,void*,int) ;
 int min (int,int) ;
 struct sk_buff* netdev_alloc_skb (int ,int ) ;
 int skb_reserve (struct sk_buff*,int ) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *lro_gen_skb(struct net_lro_mgr *lro_mgr,
       struct skb_frag_struct *frags,
       int len, int true_size,
       void *mac_hdr,
       int hlen, __wsum sum,
       u32 ip_summed)
{
 struct sk_buff *skb;
 struct skb_frag_struct *skb_frags;
 int data_len = len;
 int hdr_len = min(len, hlen);

 skb = netdev_alloc_skb(lro_mgr->dev, hlen + lro_mgr->frag_align_pad);
 if (!skb)
  return ((void*)0);

 skb_reserve(skb, lro_mgr->frag_align_pad);
 skb->len = len;
 skb->data_len = len - hdr_len;
 skb->truesize += true_size;
 skb->tail += hdr_len;

 memcpy(skb->data, mac_hdr, hdr_len);

 skb_frags = skb_shinfo(skb)->frags;
 while (data_len > 0) {
  *skb_frags = *frags;
  data_len -= frags->size;
  skb_frags++;
  frags++;
  skb_shinfo(skb)->nr_frags++;
 }

 skb_shinfo(skb)->frags[0].page_offset += hdr_len;
 skb_shinfo(skb)->frags[0].size -= hdr_len;

 skb->ip_summed = ip_summed;
 skb->csum = sum;
 skb->protocol = eth_type_trans(skb, lro_mgr->dev);
 return skb;
}
