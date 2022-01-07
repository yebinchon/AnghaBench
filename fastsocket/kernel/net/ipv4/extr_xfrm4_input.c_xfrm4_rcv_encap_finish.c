
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dev; } ;
struct iphdr {int tos; int saddr; int daddr; } ;


 int NET_RX_DROP ;
 int dst_input (struct sk_buff*) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 scalar_t__ ip_route_input (struct sk_buff*,int ,int ,int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int * skb_dst (struct sk_buff*) ;

__attribute__((used)) static inline int xfrm4_rcv_encap_finish(struct sk_buff *skb)
{
 if (skb_dst(skb) == ((void*)0)) {
  const struct iphdr *iph = ip_hdr(skb);

  if (ip_route_input(skb, iph->daddr, iph->saddr, iph->tos,
       skb->dev))
   goto drop;
 }
 return dst_input(skb);
drop:
 kfree_skb(skb);
 return NET_RX_DROP;
}
