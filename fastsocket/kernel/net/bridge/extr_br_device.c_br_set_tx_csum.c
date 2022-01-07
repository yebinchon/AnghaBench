
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct net_bridge {int feature_mask; } ;


 int NETIF_F_ALL_CSUM ;
 int NETIF_F_NO_CSUM ;
 int br_features_recompute (struct net_bridge*) ;
 struct net_bridge* netdev_priv (struct net_device*) ;

__attribute__((used)) static int br_set_tx_csum(struct net_device *dev, u32 data)
{
 struct net_bridge *br = netdev_priv(dev);

 if (data)
  br->feature_mask |= NETIF_F_NO_CSUM;
 else
  br->feature_mask &= ~NETIF_F_ALL_CSUM;

 br_features_recompute(br);
 return 0;
}
