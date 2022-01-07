
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct iphdr {int ihl; int version; int ttl; int frag_off; int id; int tos; int protocol; } ;
struct TYPE_2__ {int ttl; int frag_off; int id; int tos; int protocol; } ;


 TYPE_1__* XFRM_MODE_SKB_CB (struct sk_buff*) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;

__attribute__((used)) static void xfrm4_beet_make_header(struct sk_buff *skb)
{
 struct iphdr *iph = ip_hdr(skb);

 iph->ihl = 5;
 iph->version = 4;

 iph->protocol = XFRM_MODE_SKB_CB(skb)->protocol;
 iph->tos = XFRM_MODE_SKB_CB(skb)->tos;

 iph->id = XFRM_MODE_SKB_CB(skb)->id;
 iph->frag_off = XFRM_MODE_SKB_CB(skb)->frag_off;
 iph->ttl = XFRM_MODE_SKB_CB(skb)->ttl;
}
