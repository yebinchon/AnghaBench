
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ipv6hdr {int version; int hop_limit; int nexthdr; int flow_lbl; } ;
struct TYPE_2__ {int ttl; int tos; int protocol; int flow_lbl; } ;


 TYPE_1__* XFRM_MODE_SKB_CB (struct sk_buff*) ;
 int ipv6_change_dsfield (struct ipv6hdr*,int ,int ) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static void xfrm6_beet_make_header(struct sk_buff *skb)
{
 struct ipv6hdr *iph = ipv6_hdr(skb);

 iph->version = 6;

 memcpy(iph->flow_lbl, XFRM_MODE_SKB_CB(skb)->flow_lbl,
        sizeof(iph->flow_lbl));
 iph->nexthdr = XFRM_MODE_SKB_CB(skb)->protocol;

 ipv6_change_dsfield(iph, 0, XFRM_MODE_SKB_CB(skb)->tos);
 iph->hop_limit = XFRM_MODE_SKB_CB(skb)->ttl;
}
