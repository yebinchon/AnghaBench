
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct iphdr {int ihl; int ttl; int tos; int frag_off; int id; } ;
struct TYPE_2__ {int ihl; int optlen; int flow_lbl; int ttl; int tos; int frag_off; int id; } ;


 TYPE_1__* XFRM_MODE_SKB_CB (struct sk_buff*) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int memset (int ,int ,int) ;

int xfrm4_extract_header(struct sk_buff *skb)
{
 struct iphdr *iph = ip_hdr(skb);

 XFRM_MODE_SKB_CB(skb)->ihl = sizeof(*iph);
 XFRM_MODE_SKB_CB(skb)->id = iph->id;
 XFRM_MODE_SKB_CB(skb)->frag_off = iph->frag_off;
 XFRM_MODE_SKB_CB(skb)->tos = iph->tos;
 XFRM_MODE_SKB_CB(skb)->ttl = iph->ttl;
 XFRM_MODE_SKB_CB(skb)->optlen = iph->ihl * 4 - sizeof(*iph);
 memset(XFRM_MODE_SKB_CB(skb)->flow_lbl, 0,
        sizeof(XFRM_MODE_SKB_CB(skb)->flow_lbl));

 return 0;
}
