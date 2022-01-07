
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct sk_buff {unsigned int priority; scalar_t__ data; } ;
struct iphdr {int tos; } ;
struct ieee80211_network {int QoS_Enable; } ;
struct ethhdr {int h_proto; } ;
struct ether_header {scalar_t__ ether_type; } ;


 int ETHERTYPE_IP ;
 scalar_t__ ETH_P_PAE ;
 unsigned int VLAN_PRI_MASK ;
 unsigned int VLAN_PRI_SHIFT ;
 scalar_t__ __constant_htons (int ) ;
 scalar_t__ ntohs (int ) ;
 unsigned int vlan_tx_tag_get (struct sk_buff*) ;
 scalar_t__ vlan_tx_tag_present (struct sk_buff*) ;

__attribute__((used)) static int
ieee80211_classify(struct sk_buff *skb, struct ieee80211_network *network)
{
  struct ether_header *eh = (struct ether_header*)skb->data;
  unsigned int wme_UP = 0;

  if(!network->QoS_Enable) {
     skb->priority = 0;
     return(wme_UP);
  }

  if(eh->ether_type == __constant_htons(ETHERTYPE_IP)) {
    const struct iphdr *ih = (struct iphdr*)(skb->data + sizeof(struct ether_header));

    wme_UP = (ih->tos >> 5)&0x07;
  } else if (vlan_tx_tag_present(skb)) {




 u32 tag = vlan_tx_tag_get(skb);
 wme_UP = (tag >> 13) & 7;
  } else if(ETH_P_PAE == ntohs(((struct ethhdr *)skb->data)->h_proto)) {

    wme_UP = 7;
  }

  skb->priority = wme_UP;
  return(wme_UP);
}
