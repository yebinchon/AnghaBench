
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {int features; } ;


 int NETIF_F_TSO ;

int ethtool_op_set_tso(struct net_device *dev, u32 data)
{
 if (data)
  dev->features |= NETIF_F_TSO;
 else
  dev->features &= ~NETIF_F_TSO;

 return 0;
}
