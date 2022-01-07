
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {scalar_t__ addr_len; int dev_id; scalar_t__ dev_addr; } ;


 scalar_t__ ETH_ALEN ;
 int memcpy (int*,scalar_t__,int) ;

__attribute__((used)) static int addrconf_ifid_eui48(u8 *eui, struct net_device *dev)
{
 if (dev->addr_len != ETH_ALEN)
  return -1;
 memcpy(eui, dev->dev_addr, 3);
 memcpy(eui + 5, dev->dev_addr + 3, 3);
 if (dev->dev_id) {
  eui[3] = (dev->dev_id >> 8) & 0xFF;
  eui[4] = dev->dev_id & 0xFF;
 } else {
  eui[3] = 0xFF;
  eui[4] = 0xFE;
  eui[0] ^= 2;
 }
 return 0;
}
