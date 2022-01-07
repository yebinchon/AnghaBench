
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int pkt_type; scalar_t__ vlan_tci; scalar_t__ protocol; scalar_t__ data; } ;
struct ethhdr {scalar_t__ h_proto; } ;
typedef scalar_t__ __be16 ;


 int ENOMEM ;
 int ETH_HLEN ;
 int ETH_P_802_2 ;
 int ETH_P_TEB ;
 int PACKET_HOST ;
 scalar_t__ htons (int ) ;
 scalar_t__ likely (int) ;
 int nf_reset (struct sk_buff*) ;
 int ntohs (scalar_t__) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int secpath_reset (struct sk_buff*) ;
 int skb_dst_drop (struct sk_buff*) ;
 int skb_pull_rcsum (struct sk_buff*,int) ;
 int skb_set_queue_mapping (struct sk_buff*,int ) ;
 scalar_t__ unlikely (int) ;

int iptunnel_pull_header(struct sk_buff *skb, int hdr_len, __be16 inner_proto)
{
 if (unlikely(!pskb_may_pull(skb, hdr_len)))
  return -ENOMEM;

 skb_pull_rcsum(skb, hdr_len);

 if (inner_proto == htons(ETH_P_TEB)) {
  struct ethhdr *eh = (struct ethhdr *)skb->data;

  if (unlikely(!pskb_may_pull(skb, ETH_HLEN)))
   return -ENOMEM;

  if (likely(ntohs(eh->h_proto) >= 1536))
   skb->protocol = eh->h_proto;
  else
   skb->protocol = htons(ETH_P_802_2);

 } else {
  skb->protocol = inner_proto;
 }

 nf_reset(skb);
 secpath_reset(skb);
 skb_dst_drop(skb);
 skb->vlan_tci = 0;
 skb_set_queue_mapping(skb, 0);
 skb->pkt_type = PACKET_HOST;
 return 0;
}
