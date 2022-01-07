
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {int features; } ;


 int NETIF_F_IPV6_CSUM ;
 int NETIF_F_IP_CSUM ;

int ethtool_op_set_tx_ipv6_csum(struct net_device *dev, u32 data)
{
 if (data)
  dev->features |= NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM;
 else
  dev->features &= ~(NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM);

 return 0;
}
