
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int flags; int dev_addr; } ;
struct dsa_slave_priv {TYPE_2__* parent; } ;
struct TYPE_4__ {TYPE_1__* dst; } ;
struct TYPE_3__ {struct net_device* master_netdev; } ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 scalar_t__ compare_ether_addr (int ,int ) ;
 int dev_mc_unsync (struct net_device*,struct net_device*) ;
 int dev_set_allmulti (struct net_device*,int) ;
 int dev_set_promiscuity (struct net_device*,int) ;
 int dev_unicast_delete (struct net_device*,int ) ;
 int dev_unicast_unsync (struct net_device*,struct net_device*) ;
 struct dsa_slave_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int dsa_slave_close(struct net_device *dev)
{
 struct dsa_slave_priv *p = netdev_priv(dev);
 struct net_device *master = p->parent->dst->master_netdev;

 dev_mc_unsync(master, dev);
 dev_unicast_unsync(master, dev);
 if (dev->flags & IFF_ALLMULTI)
  dev_set_allmulti(master, -1);
 if (dev->flags & IFF_PROMISC)
  dev_set_promiscuity(master, -1);

 if (compare_ether_addr(dev->dev_addr, master->dev_addr))
  dev_unicast_delete(master, dev->dev_addr);

 return 0;
}
