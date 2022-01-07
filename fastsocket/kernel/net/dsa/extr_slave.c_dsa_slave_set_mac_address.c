
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr {int sa_data; } ;
struct net_device {int flags; int dev_addr; } ;
struct dsa_slave_priv {TYPE_1__* parent; } ;
struct TYPE_4__ {struct net_device* master_netdev; } ;
struct TYPE_3__ {TYPE_2__* dst; } ;


 int EADDRNOTAVAIL ;
 int ETH_ALEN ;
 int IFF_UP ;
 scalar_t__ compare_ether_addr (int ,int ) ;
 int dev_unicast_add (struct net_device*,int ) ;
 int dev_unicast_delete (struct net_device*,int ) ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 struct dsa_slave_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int dsa_slave_set_mac_address(struct net_device *dev, void *a)
{
 struct dsa_slave_priv *p = netdev_priv(dev);
 struct net_device *master = p->parent->dst->master_netdev;
 struct sockaddr *addr = a;
 int err;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 if (!(dev->flags & IFF_UP))
  goto out;

 if (compare_ether_addr(addr->sa_data, master->dev_addr)) {
  err = dev_unicast_add(master, addr->sa_data);
  if (err < 0)
   return err;
 }

 if (compare_ether_addr(dev->dev_addr, master->dev_addr))
  dev_unicast_delete(master, dev->dev_addr);

out:
 memcpy(dev->dev_addr, addr->sa_data, ETH_ALEN);

 return 0;
}
