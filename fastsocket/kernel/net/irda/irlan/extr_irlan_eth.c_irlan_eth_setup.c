
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int tx_queue_len; int destructor; int * netdev_ops; } ;


 int ether_setup (struct net_device*) ;
 int free_netdev ;
 int irlan_eth_netdev_ops ;

__attribute__((used)) static void irlan_eth_setup(struct net_device *dev)
{
 ether_setup(dev);

 dev->netdev_ops = &irlan_eth_netdev_ops;
 dev->destructor = free_netdev;
 dev->tx_queue_len = 4;
}
