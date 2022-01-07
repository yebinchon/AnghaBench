
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trllc {int* protid; int ethertype; int llc; int ssap; int dsap; } ;
struct trh_hdr {int daddr; int saddr; int fc; int ac; } ;
struct sk_buff {int dummy; } ;
struct net_device {void const* dev_addr; int addr_len; } ;


 int AC ;
 unsigned short ETH_P_ARP ;
 unsigned short ETH_P_IP ;
 unsigned short ETH_P_IPV6 ;
 int EXTENDED_SAP ;
 int LLC_FRAME ;
 int UI_CMD ;
 int htons (unsigned short) ;
 int memcpy (int ,void const*,int ) ;
 scalar_t__ skb_push (struct sk_buff*,int) ;
 int tr_source_route (struct sk_buff*,struct trh_hdr*,struct net_device*) ;

__attribute__((used)) static int tr_header(struct sk_buff *skb, struct net_device *dev,
       unsigned short type,
       const void *daddr, const void *saddr, unsigned len)
{
 struct trh_hdr *trh;
 int hdr_len;





 if (type == ETH_P_IP || type == ETH_P_IPV6 || type == ETH_P_ARP)
 {
  struct trllc *trllc;

  hdr_len = sizeof(struct trh_hdr) + sizeof(struct trllc);
  trh = (struct trh_hdr *)skb_push(skb, hdr_len);
  trllc = (struct trllc *)(trh+1);
  trllc->dsap = trllc->ssap = EXTENDED_SAP;
  trllc->llc = UI_CMD;
  trllc->protid[0] = trllc->protid[1] = trllc->protid[2] = 0x00;
  trllc->ethertype = htons(type);
 }
 else
 {
  hdr_len = sizeof(struct trh_hdr);
  trh = (struct trh_hdr *)skb_push(skb, hdr_len);
 }

 trh->ac=AC;
 trh->fc=LLC_FRAME;

 if(saddr)
  memcpy(trh->saddr,saddr,dev->addr_len);
 else
  memcpy(trh->saddr,dev->dev_addr,dev->addr_len);





 if(daddr)
 {
  memcpy(trh->daddr,daddr,dev->addr_len);
  tr_source_route(skb, trh, dev);
  return(hdr_len);
 }

 return -hdr_len;
}
