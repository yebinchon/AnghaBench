
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned char* data; int pkt_type; struct net_device* dev; } ;
struct net_device {int dev_addr; int broadcast; } ;
struct ethhdr {int h_proto; int h_dest; } ;
typedef int __be16 ;


 int ETH_HLEN ;
 int ETH_P_802_2 ;
 int ETH_P_802_3 ;
 int ETH_P_DSA ;
 int ETH_P_TRAILER ;
 int PACKET_BROADCAST ;
 int PACKET_MULTICAST ;
 int PACKET_OTHERHOST ;
 int compare_ether_addr_64bits (int ,int ) ;
 struct ethhdr* eth_hdr (struct sk_buff*) ;
 int htons (int ) ;
 int is_multicast_ether_addr (int ) ;
 scalar_t__ netdev_uses_dsa_tags (struct net_device*) ;
 scalar_t__ netdev_uses_trailer_tags (struct net_device*) ;
 int ntohs (int ) ;
 int skb_pull (struct sk_buff*,int ) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 scalar_t__ unlikely (int ) ;

__be16 eth_type_trans(struct sk_buff *skb, struct net_device *dev)
{
 struct ethhdr *eth;
 unsigned char *rawp;

 skb->dev = dev;
 skb_reset_mac_header(skb);
 skb_pull(skb, ETH_HLEN);
 eth = eth_hdr(skb);

 if (unlikely(is_multicast_ether_addr(eth->h_dest))) {
  if (!compare_ether_addr_64bits(eth->h_dest, dev->broadcast))
   skb->pkt_type = PACKET_BROADCAST;
  else
   skb->pkt_type = PACKET_MULTICAST;
 }
 else if (1 ) {
  if (unlikely(compare_ether_addr_64bits(eth->h_dest, dev->dev_addr)))
   skb->pkt_type = PACKET_OTHERHOST;
 }







 if (netdev_uses_dsa_tags(dev))
  return htons(ETH_P_DSA);
 if (netdev_uses_trailer_tags(dev))
  return htons(ETH_P_TRAILER);

 if (ntohs(eth->h_proto) >= 1536)
  return eth->h_proto;

 rawp = skb->data;







 if (*(unsigned short *)rawp == 0xFFFF)
  return htons(ETH_P_802_3);




 return htons(ETH_P_802_2);
}
