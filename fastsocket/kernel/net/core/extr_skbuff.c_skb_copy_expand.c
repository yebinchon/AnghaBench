
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ ip_summed; int csum_start; int transport_header; int network_header; int mac_header; scalar_t__ len; scalar_t__ head; } ;
typedef int gfp_t ;


 int BUG () ;
 scalar_t__ CHECKSUM_PARTIAL ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 int copy_skb_header (struct sk_buff*,struct sk_buff const*) ;
 scalar_t__ skb_copy_bits (struct sk_buff const*,int,scalar_t__,scalar_t__) ;
 int skb_headroom (struct sk_buff const*) ;
 scalar_t__ skb_mac_header_was_set (struct sk_buff const*) ;
 int skb_put (struct sk_buff*,scalar_t__) ;
 int skb_reserve (struct sk_buff*,int) ;

struct sk_buff *skb_copy_expand(const struct sk_buff *skb,
    int newheadroom, int newtailroom,
    gfp_t gfp_mask)
{



 struct sk_buff *n = alloc_skb(newheadroom + skb->len + newtailroom,
          gfp_mask);
 int oldheadroom = skb_headroom(skb);
 int head_copy_len, head_copy_off;
 int off;

 if (!n)
  return ((void*)0);

 skb_reserve(n, newheadroom);


 skb_put(n, skb->len);

 head_copy_len = oldheadroom;
 head_copy_off = 0;
 if (newheadroom <= head_copy_len)
  head_copy_len = newheadroom;
 else
  head_copy_off = newheadroom - head_copy_len;


 if (skb_copy_bits(skb, -head_copy_len, n->head + head_copy_off,
     skb->len + head_copy_len))
  BUG();

 copy_skb_header(n, skb);

 off = newheadroom - oldheadroom;
 if (n->ip_summed == CHECKSUM_PARTIAL)
  n->csum_start += off;







 return n;
}
