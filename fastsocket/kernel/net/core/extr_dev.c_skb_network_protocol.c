
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_hdr {scalar_t__ h_vlan_encapsulated_proto; } ;
struct sk_buff {scalar_t__ protocol; scalar_t__ data; } ;
typedef scalar_t__ __be16 ;


 int ETH_HLEN ;
 int ETH_P_8021Q ;
 scalar_t__ VLAN_HLEN ;
 scalar_t__ htons (int ) ;
 int pskb_may_pull (struct sk_buff*,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__be16 skb_network_protocol(struct sk_buff *skb)
{
 __be16 type = skb->protocol;
 int vlan_depth = ETH_HLEN;

 while (type == htons(ETH_P_8021Q)) {
  struct vlan_hdr *vh;

  if (unlikely(!pskb_may_pull(skb, vlan_depth + VLAN_HLEN)))
   return 0;

  vh = (struct vlan_hdr *)(skb->data + vlan_depth);
  type = vh->h_vlan_encapsulated_proto;
  vlan_depth += VLAN_HLEN;
 }

 return type;
}
