
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {void* dev_addr; int flags; } ;
struct ethhdr {int h_dest; int h_source; void* h_proto; } ;


 int ETH_ALEN ;
 int ETH_HLEN ;
 unsigned short ETH_P_802_3 ;
 int IFF_LOOPBACK ;
 int IFF_NOARP ;
 void* htons (unsigned int) ;
 int memcpy (int ,void const*,int ) ;
 int memset (int ,int ,int ) ;
 scalar_t__ skb_push (struct sk_buff*,int) ;

int eth_header(struct sk_buff *skb, struct net_device *dev,
        unsigned short type,
        const void *daddr, const void *saddr, unsigned len)
{
 struct ethhdr *eth = (struct ethhdr *)skb_push(skb, ETH_HLEN);

 if (type != ETH_P_802_3)
  eth->h_proto = htons(type);
 else
  eth->h_proto = htons(len);





 if (!saddr)
  saddr = dev->dev_addr;
 memcpy(eth->h_source, saddr, ETH_ALEN);

 if (daddr) {
  memcpy(eth->h_dest, daddr, ETH_ALEN);
  return ETH_HLEN;
 }





 if (dev->flags & (IFF_LOOPBACK | IFF_NOARP)) {
  memset(eth->h_dest, 0, ETH_ALEN);
  return ETH_HLEN;
 }

 return -ETH_HLEN;
}
