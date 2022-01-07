
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


 int ENETDOWN ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int IFF_UP ;
 scalar_t__ compare_ether_addr (int ,int ) ;
 int dev_set_allmulti (struct net_device*,int) ;
 int dev_set_promiscuity (struct net_device*,int) ;
 int dev_unicast_add (struct net_device*,int ) ;
 int dev_unicast_delete (struct net_device*,int ) ;
 struct dsa_slave_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int dsa_slave_open(struct net_device *dev)
{
 struct dsa_slave_priv *p = netdev_priv(dev);
 struct net_device *master = p->parent->dst->master_netdev;
 int err;

 if (!(master->flags & IFF_UP))
  return -ENETDOWN;

 if (compare_ether_addr(dev->dev_addr, master->dev_addr)) {
  err = dev_unicast_add(master, dev->dev_addr);
  if (err < 0)
   goto out;
 }

 if (dev->flags & IFF_ALLMULTI) {
  err = dev_set_allmulti(master, 1);
  if (err < 0)
   goto del_unicast;
 }
 if (dev->flags & IFF_PROMISC) {
  err = dev_set_promiscuity(master, 1);
  if (err < 0)
   goto clear_allmulti;
 }

 return 0;

clear_allmulti:
 if (dev->flags & IFF_ALLMULTI)
  dev_set_allmulti(master, -1);
del_unicast:
 if (compare_ether_addr(dev->dev_addr, master->dev_addr))
  dev_unicast_delete(master, dev->dev_addr);
out:
 return err;
}
