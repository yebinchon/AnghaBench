
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int features; } ;


 int ETH_FLAG_LRO ;
 int ETH_FLAG_RXHASH ;
 int NETIF_F_LRO ;
 int NETIF_F_RXHASH ;

int ethtool_op_set_flags(struct net_device *dev, u32 data)
{
 if (data & ETH_FLAG_LRO)
  dev->features |= NETIF_F_LRO;
 else
  dev->features &= ~NETIF_F_LRO;

 if (data & ETH_FLAG_RXHASH)
  dev->features |= NETIF_F_RXHASH;
 else
  dev->features &= ~NETIF_F_RXHASH;

 return 0;
}
