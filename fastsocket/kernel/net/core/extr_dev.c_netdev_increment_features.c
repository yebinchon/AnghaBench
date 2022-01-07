
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long NETIF_F_ALL_CSUM ;
 unsigned long NETIF_F_ALL_FOR_ALL ;
 unsigned long NETIF_F_GEN_CSUM ;
 unsigned long NETIF_F_NO_CSUM ;
 unsigned long NETIF_F_ONE_FOR_ALL ;
 unsigned long NETIF_F_VLAN_CHALLENGED ;

unsigned long netdev_increment_features(unsigned long all, unsigned long one,
     unsigned long mask)
{
 if (mask & NETIF_F_GEN_CSUM)
  mask |= NETIF_F_ALL_CSUM;
 mask |= NETIF_F_VLAN_CHALLENGED;

 all |= one & (NETIF_F_ONE_FOR_ALL|NETIF_F_ALL_CSUM) & mask;
 all &= one | ~NETIF_F_ALL_FOR_ALL;


 if (all & (NETIF_F_ALL_CSUM & ~NETIF_F_NO_CSUM))
  all &= ~NETIF_F_NO_CSUM;


 if (all & NETIF_F_GEN_CSUM)
  all &= ~(NETIF_F_ALL_CSUM & ~NETIF_F_GEN_CSUM);

 return all;
}
