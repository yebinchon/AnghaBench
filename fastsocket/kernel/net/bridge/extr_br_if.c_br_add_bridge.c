
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; } ;
struct net {int dummy; } ;


 int ENOMEM ;
 int SET_NETDEV_DEVTYPE (struct net_device*,int *) ;
 int br_sysfs_addbr (struct net_device*) ;
 int br_type ;
 int dev_alloc_name (struct net_device*,int ) ;
 int free_netdev (struct net_device*) ;
 struct net_device* new_bridge_dev (struct net*,char const*) ;
 int register_netdevice (struct net_device*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 scalar_t__ strchr (int ,char) ;
 int unregister_netdevice (struct net_device*) ;

int br_add_bridge(struct net *net, const char *name)
{
 struct net_device *dev;
 int ret;

 dev = new_bridge_dev(net, name);
 if (!dev)
  return -ENOMEM;

 rtnl_lock();
 if (strchr(dev->name, '%')) {
  ret = dev_alloc_name(dev, dev->name);
  if (ret < 0)
   goto out_free;
 }

 SET_NETDEV_DEVTYPE(dev, &br_type);

 ret = register_netdevice(dev);
 if (ret)
  goto out_free;

 ret = br_sysfs_addbr(dev);
 if (ret)
  unregister_netdevice(dev);
 out:
 rtnl_unlock();
 return ret;

out_free:
 free_netdev(dev);
 goto out;
}
