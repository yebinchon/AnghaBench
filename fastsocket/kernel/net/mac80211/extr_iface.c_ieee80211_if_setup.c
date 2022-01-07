
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int destructor; int * netdev_ops; } ;
struct TYPE_2__ {int ext_priv_flags; } ;


 int IFF_TX_SKB_SHARING ;
 int ether_setup (struct net_device*) ;
 int free_netdev ;
 int ieee80211_dataif_ops ;
 TYPE_1__* netdev_extended (struct net_device*) ;

__attribute__((used)) static void ieee80211_if_setup(struct net_device *dev)
{
 ether_setup(dev);
 netdev_extended(dev)->ext_priv_flags &= ~IFF_TX_SKB_SHARING;
 dev->netdev_ops = &ieee80211_dataif_ops;
 dev->destructor = free_netdev;
}
