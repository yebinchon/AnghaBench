
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int broadcast; int * ethtool_ops; int destructor; int * netdev_ops; scalar_t__ tx_queue_len; int priv_flags; } ;
struct TYPE_2__ {int ext_priv_flags; } ;


 int ETH_ALEN ;
 int IFF_802_1Q_VLAN ;
 int IFF_TX_SKB_SHARING ;
 int IFF_XMIT_DST_RELEASE ;
 int ether_setup (struct net_device*) ;
 int free_netdev ;
 int memset (int ,int ,int ) ;
 TYPE_1__* netdev_extended (struct net_device*) ;
 int vlan_ethtool_ops ;
 int vlan_netdev_ops ;

void vlan_setup(struct net_device *dev)
{
 ether_setup(dev);

 dev->priv_flags |= IFF_802_1Q_VLAN;
 dev->priv_flags &= ~IFF_XMIT_DST_RELEASE;
 netdev_extended(dev)->ext_priv_flags &= ~IFF_TX_SKB_SHARING;
 dev->tx_queue_len = 0;

 dev->netdev_ops = &vlan_netdev_ops;
 dev->destructor = free_netdev;
 dev->ethtool_ops = &vlan_ethtool_ops;

 memset(dev->broadcast, 0, ETH_ALEN);
}
