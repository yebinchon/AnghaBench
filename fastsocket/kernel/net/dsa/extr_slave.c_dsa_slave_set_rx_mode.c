
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct dsa_slave_priv {TYPE_2__* parent; } ;
struct TYPE_4__ {TYPE_1__* dst; } ;
struct TYPE_3__ {struct net_device* master_netdev; } ;


 int dev_mc_sync (struct net_device*,struct net_device*) ;
 int dev_unicast_sync (struct net_device*,struct net_device*) ;
 struct dsa_slave_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void dsa_slave_set_rx_mode(struct net_device *dev)
{
 struct dsa_slave_priv *p = netdev_priv(dev);
 struct net_device *master = p->parent->dst->master_netdev;

 dev_mc_sync(master, dev);
 dev_unicast_sync(master, dev);
}
