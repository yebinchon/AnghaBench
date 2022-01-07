
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dev; int len; scalar_t__ data; } ;
struct iphdr {int protocol; int tot_len; } ;
struct TYPE_2__ {int protocol; } ;


 int NF_HOOK (int ,int ,struct sk_buff*,int ,int *,int ) ;
 int NF_INET_PRE_ROUTING ;
 int PF_INET ;
 TYPE_1__* XFRM_MODE_SKB_CB (struct sk_buff*) ;
 int __skb_push (struct sk_buff*,scalar_t__) ;
 int htons (int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ip_send_check (struct iphdr*) ;
 scalar_t__ skb_network_header (struct sk_buff*) ;
 int xfrm4_rcv_encap_finish ;

int xfrm4_transport_finish(struct sk_buff *skb, int async)
{
 struct iphdr *iph = ip_hdr(skb);

 iph->protocol = XFRM_MODE_SKB_CB(skb)->protocol;


 if (!async)
  return -iph->protocol;


 __skb_push(skb, skb->data - skb_network_header(skb));
 iph->tot_len = htons(skb->len);
 ip_send_check(iph);

 NF_HOOK(PF_INET, NF_INET_PRE_ROUTING, skb, skb->dev, ((void*)0),
  xfrm4_rcv_encap_finish);
 return 0;
}
