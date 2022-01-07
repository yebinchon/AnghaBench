
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct net_device {void* dev_addr; } ;


 unsigned short ETH_P_PHONET ;
 int * skb_push (struct sk_buff*,int) ;

__attribute__((used)) static int pn_header_create(struct sk_buff *skb, struct net_device *dev,
    unsigned short type, const void *daddr,
    const void *saddr, unsigned len)
{
 u8 *media = skb_push(skb, 1);

 if (type != ETH_P_PHONET)
  return -1;

 if (!saddr)
  saddr = dev->dev_addr;
 *media = *(const u8 *)saddr;
 return 1;
}
