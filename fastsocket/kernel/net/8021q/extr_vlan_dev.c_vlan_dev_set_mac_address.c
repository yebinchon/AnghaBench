
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int sa_data; } ;
struct net_device {int flags; int dev_addr; } ;
struct TYPE_2__ {struct net_device* real_dev; } ;


 int EADDRNOTAVAIL ;
 int ETH_ALEN ;
 int IFF_UP ;
 scalar_t__ compare_ether_addr (int ,int ) ;
 int dev_unicast_add (struct net_device*,int ) ;
 int dev_unicast_delete (struct net_device*,int ) ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 TYPE_1__* vlan_dev_info (struct net_device*) ;

__attribute__((used)) static int vlan_dev_set_mac_address(struct net_device *dev, void *p)
{
 struct net_device *real_dev = vlan_dev_info(dev)->real_dev;
 struct sockaddr *addr = p;
 int err;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 if (!(dev->flags & IFF_UP))
  goto out;

 if (compare_ether_addr(addr->sa_data, real_dev->dev_addr)) {
  err = dev_unicast_add(real_dev, addr->sa_data);
  if (err < 0)
   return err;
 }

 if (compare_ether_addr(dev->dev_addr, real_dev->dev_addr))
  dev_unicast_delete(real_dev, dev->dev_addr);

out:
 memcpy(dev->dev_addr, addr->sa_data, ETH_ALEN);
 return 0;
}
