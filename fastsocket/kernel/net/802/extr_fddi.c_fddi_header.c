
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {void const* dev_addr; int addr_len; } ;
struct TYPE_3__ {int* oui; int ethertype; int ctrl; void* ssap; void* dsap; } ;
struct TYPE_4__ {TYPE_1__ llc_snap; } ;
struct fddihdr {int daddr; int saddr; TYPE_2__ hdr; int fc; } ;


 unsigned short ETH_P_ARP ;
 unsigned short ETH_P_IP ;
 unsigned short ETH_P_IPV6 ;
 void* FDDI_EXTENDED_SAP ;
 int FDDI_FC_K_ASYNC_LLC_DEF ;
 int FDDI_K_8022_HLEN ;
 int FDDI_K_SNAP_HLEN ;
 int FDDI_UI_CMD ;
 int htons (unsigned short) ;
 int memcpy (int ,void const*,int ) ;
 scalar_t__ skb_push (struct sk_buff*,int) ;

__attribute__((used)) static int fddi_header(struct sk_buff *skb, struct net_device *dev,
         unsigned short type,
         const void *daddr, const void *saddr, unsigned len)
{
 int hl = FDDI_K_SNAP_HLEN;
 struct fddihdr *fddi;

 if(type != ETH_P_IP && type != ETH_P_IPV6 && type != ETH_P_ARP)
  hl=FDDI_K_8022_HLEN-3;
 fddi = (struct fddihdr *)skb_push(skb, hl);
 fddi->fc = FDDI_FC_K_ASYNC_LLC_DEF;
 if(type == ETH_P_IP || type == ETH_P_IPV6 || type == ETH_P_ARP)
 {
  fddi->hdr.llc_snap.dsap = FDDI_EXTENDED_SAP;
  fddi->hdr.llc_snap.ssap = FDDI_EXTENDED_SAP;
  fddi->hdr.llc_snap.ctrl = FDDI_UI_CMD;
  fddi->hdr.llc_snap.oui[0] = 0x00;
  fddi->hdr.llc_snap.oui[1] = 0x00;
  fddi->hdr.llc_snap.oui[2] = 0x00;
  fddi->hdr.llc_snap.ethertype = htons(type);
 }



 if (saddr != ((void*)0))
  memcpy(fddi->saddr, saddr, dev->addr_len);
 else
  memcpy(fddi->saddr, dev->dev_addr, dev->addr_len);

 if (daddr != ((void*)0))
 {
  memcpy(fddi->daddr, daddr, dev->addr_len);
  return(hl);
 }

 return(-hl);
}
