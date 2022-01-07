
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trllc {scalar_t__ dsap; scalar_t__ ethertype; } ;
struct trh_hdr {int* saddr; int* daddr; int rcf; } ;
struct sk_buff {scalar_t__ pkt_type; scalar_t__ data; struct net_device* dev; } ;
struct net_device {int flags; int dev_addr; int broadcast; } ;
typedef scalar_t__ __be16 ;


 int ETH_P_ARP ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 int ETH_P_TR_802_2 ;
 scalar_t__ EXTENDED_SAP ;
 int IFF_PROMISC ;
 scalar_t__ PACKET_BROADCAST ;
 scalar_t__ PACKET_MULTICAST ;
 scalar_t__ PACKET_OTHERHOST ;
 int TR_ALEN ;
 int TR_MAXRIFLEN ;
 int TR_RCF_LEN_MASK ;
 int TR_RII ;
 scalar_t__ htons (int ) ;
 scalar_t__ memcmp (int*,int ,int ) ;
 int ntohs (int ) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int tr_add_rif_info (struct trh_hdr*,struct net_device*) ;
 struct trh_hdr* tr_hdr (struct sk_buff*) ;

__be16 tr_type_trans(struct sk_buff *skb, struct net_device *dev)
{

 struct trh_hdr *trh;
 struct trllc *trllc;
 unsigned riflen=0;

 skb->dev = dev;
 skb_reset_mac_header(skb);
 trh = tr_hdr(skb);

 if(trh->saddr[0] & TR_RII)
  riflen = (ntohs(trh->rcf) & TR_RCF_LEN_MASK) >> 8;

 trllc = (struct trllc *)(skb->data+sizeof(struct trh_hdr)-TR_MAXRIFLEN+riflen);

 skb_pull(skb,sizeof(struct trh_hdr)-TR_MAXRIFLEN+riflen);

 if(*trh->daddr & 0x80)
 {
  if(!memcmp(trh->daddr,dev->broadcast,TR_ALEN))
   skb->pkt_type=PACKET_BROADCAST;
  else
   skb->pkt_type=PACKET_MULTICAST;
 }
 else if ( (trh->daddr[0] & 0x01) && (trh->daddr[1] & 0x00) && (trh->daddr[2] & 0x5E))
 {
  skb->pkt_type=PACKET_MULTICAST;
 }
 else if(dev->flags & IFF_PROMISC)
 {
  if(memcmp(trh->daddr, dev->dev_addr, TR_ALEN))
   skb->pkt_type=PACKET_OTHERHOST;
 }

 if ((skb->pkt_type != PACKET_BROADCAST) &&
     (skb->pkt_type != PACKET_MULTICAST))
  tr_add_rif_info(trh,dev) ;






 if (trllc->dsap == EXTENDED_SAP &&
     (trllc->ethertype == htons(ETH_P_IP) ||
      trllc->ethertype == htons(ETH_P_IPV6) ||
      trllc->ethertype == htons(ETH_P_ARP)))
 {
  skb_pull(skb, sizeof(struct trllc));
  return trllc->ethertype;
 }

 return htons(ETH_P_TR_802_2);
}
