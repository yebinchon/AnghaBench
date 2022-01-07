
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; void* protocol; struct net_device* dev; } ;
struct net_device {unsigned char* dev_addr; unsigned char* broadcast; int type; int addr_len; } ;
struct arphdr {int ar_hln; int ar_pln; void* ar_op; void* ar_pro; void* ar_hrd; } ;
typedef unsigned char const __be32 ;



 int ARPHRD_ETHER ;

 int ARPHRD_IEEE802 ;


 int AX25_P_IP ;
 int ETH_P_ARP ;
 int ETH_P_IP ;
 int GFP_ATOMIC ;
 scalar_t__ LL_ALLOCATED_SPACE (struct net_device*) ;
 int LL_RESERVED_SPACE (struct net_device*) ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 scalar_t__ arp_hdr_len (struct net_device*) ;
 scalar_t__ dev_hard_header (struct sk_buff*,struct net_device*,int,unsigned char const*,unsigned char const*,int ) ;
 void* htons (int const) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (unsigned char*,unsigned char const*,int) ;
 int memset (unsigned char*,int ,int) ;
 scalar_t__ skb_put (struct sk_buff*,scalar_t__) ;
 int skb_reserve (struct sk_buff*,int ) ;
 int skb_reset_network_header (struct sk_buff*) ;

struct sk_buff *arp_create(int type, int ptype, __be32 dest_ip,
      struct net_device *dev, __be32 src_ip,
      const unsigned char *dest_hw,
      const unsigned char *src_hw,
      const unsigned char *target_hw)
{
 struct sk_buff *skb;
 struct arphdr *arp;
 unsigned char *arp_ptr;





 skb = alloc_skb(arp_hdr_len(dev) + LL_ALLOCATED_SPACE(dev), GFP_ATOMIC);
 if (skb == ((void*)0))
  return ((void*)0);

 skb_reserve(skb, LL_RESERVED_SPACE(dev));
 skb_reset_network_header(skb);
 arp = (struct arphdr *) skb_put(skb, arp_hdr_len(dev));
 skb->dev = dev;
 skb->protocol = htons(ETH_P_ARP);
 if (src_hw == ((void*)0))
  src_hw = dev->dev_addr;
 if (dest_hw == ((void*)0))
  dest_hw = dev->broadcast;




 if (dev_hard_header(skb, dev, ptype, dest_hw, src_hw, skb->len) < 0)
  goto out;
 switch (dev->type) {
 default:
  arp->ar_hrd = htons(dev->type);
  arp->ar_pro = htons(ETH_P_IP);
  break;
 }

 arp->ar_hln = dev->addr_len;
 arp->ar_pln = 4;
 arp->ar_op = htons(type);

 arp_ptr=(unsigned char *)(arp+1);

 memcpy(arp_ptr, src_hw, dev->addr_len);
 arp_ptr += dev->addr_len;
 memcpy(arp_ptr, &src_ip, 4);
 arp_ptr += 4;
 if (target_hw != ((void*)0))
  memcpy(arp_ptr, target_hw, dev->addr_len);
 else
  memset(arp_ptr, 0, dev->addr_len);
 arp_ptr += dev->addr_len;
 memcpy(arp_ptr, &dest_ip, 4);

 return skb;

out:
 kfree_skb(skb);
 return ((void*)0);
}
