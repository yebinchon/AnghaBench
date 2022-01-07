
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int addr_len; int dev_addrs; } ;


 int ASSERT_RTNL () ;
 int NETDEV_CHANGEADDR ;
 int __hw_addr_add (int *,unsigned char*,int ,unsigned char) ;
 int call_netdevice_notifiers (int ,struct net_device*) ;

int dev_addr_add(struct net_device *dev, unsigned char *addr,
   unsigned char addr_type)
{
 int err;

 ASSERT_RTNL();

 err = __hw_addr_add(&dev->dev_addrs, addr, dev->addr_len, addr_type);
 if (!err)
  call_netdevice_notifiers(NETDEV_CHANGEADDR, dev);
 return err;
}
