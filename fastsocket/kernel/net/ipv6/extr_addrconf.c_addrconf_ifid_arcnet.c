
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {scalar_t__ addr_len; scalar_t__ dev_addr; } ;


 scalar_t__ ARCNET_ALEN ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int addrconf_ifid_arcnet(u8 *eui, struct net_device *dev)
{

 if (dev->addr_len != ARCNET_ALEN)
  return -1;
 memset(eui, 0, 7);
 eui[7] = *(u8*)dev->dev_addr;
 return 0;
}
