
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int dummy; } ;
struct net_device {int dummy; } ;
struct irlan_cb {struct net_device_stats stats; } ;


 struct irlan_cb* netdev_priv (struct net_device*) ;

__attribute__((used)) static struct net_device_stats *irlan_eth_get_stats(struct net_device *dev)
{
 struct irlan_cb *self = netdev_priv(dev);

 return &self->stats;
}
