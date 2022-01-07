
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int watchdog_timeo; int * netdev_ops; int addr_len; int broadcast; } ;
struct TYPE_2__ {int ext_priv_flags; } ;


 int ETH_ALEN ;
 int HZ ;
 int IFF_TX_SKB_SHARING ;
 int bnep_netdev_ops ;
 int ether_setup (struct net_device*) ;
 int memset (int ,int,int ) ;
 TYPE_1__* netdev_extended (struct net_device*) ;

void bnep_net_setup(struct net_device *dev)
{

 memset(dev->broadcast, 0xff, ETH_ALEN);
 dev->addr_len = ETH_ALEN;

 ether_setup(dev);
 netdev_extended(dev)->ext_priv_flags &= ~IFF_TX_SKB_SHARING;
 dev->netdev_ops = &bnep_netdev_ops;

 dev->watchdog_timeo = HZ * 2;
}
