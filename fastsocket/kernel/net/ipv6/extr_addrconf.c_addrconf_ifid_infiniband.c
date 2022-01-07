
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {scalar_t__ addr_len; scalar_t__ dev_addr; } ;


 scalar_t__ INFINIBAND_ALEN ;
 int memcpy (int*,scalar_t__,int) ;

__attribute__((used)) static int addrconf_ifid_infiniband(u8 *eui, struct net_device *dev)
{
 if (dev->addr_len != INFINIBAND_ALEN)
  return -1;
 memcpy(eui, dev->dev_addr + 12, 8);
 eui[0] |= 2;
 return 0;
}
