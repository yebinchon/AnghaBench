
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; } ;


 int dev_alloc_name (struct net_device*,int ) ;
 int register_netdevice (struct net_device*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 scalar_t__ strchr (int ,char) ;

int register_netdev(struct net_device *dev)
{
 int err;

 rtnl_lock();





 if (strchr(dev->name, '%')) {
  err = dev_alloc_name(dev, dev->name);
  if (err < 0)
   goto out;
 }

 err = register_netdevice(dev);
out:
 rtnl_unlock();
 return err;
}
