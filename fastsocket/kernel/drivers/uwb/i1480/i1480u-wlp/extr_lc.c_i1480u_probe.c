
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct usb_interface {struct device dev; } ;
struct usb_device_id {int dummy; } ;
struct net_device {int dummy; } ;
struct i1480u {struct net_device* net_dev; } ;


 int ENOMEM ;
 int SET_NETDEV_DEV (struct net_device*,struct device*) ;
 struct net_device* alloc_netdev (int,char*,int ) ;
 int dev_err (struct device*,char*,...) ;
 int free_netdev (struct net_device*) ;
 int i1480u_add (struct i1480u*,struct usb_interface*) ;
 int i1480u_netdev_setup ;
 int i1480u_rm (struct i1480u*) ;
 int i1480u_sysfs_setup (struct i1480u*) ;
 struct i1480u* netdev_priv (struct net_device*) ;
 int register_netdev (struct net_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int i1480u_probe(struct usb_interface *iface,
   const struct usb_device_id *id)
{
 int result;
 struct net_device *net_dev;
 struct device *dev = &iface->dev;
 struct i1480u *i1480u;


 result = -ENOMEM;
 net_dev = alloc_netdev(sizeof(*i1480u), "wlp%d", i1480u_netdev_setup);
 if (net_dev == ((void*)0)) {
  dev_err(dev, "no memory for network device instance\n");
  goto error_alloc_netdev;
 }
 SET_NETDEV_DEV(net_dev, dev);
 i1480u = netdev_priv(net_dev);
 i1480u->net_dev = net_dev;
 result = i1480u_add(i1480u, iface);
 if (result < 0) {
  dev_err(dev, "cannot add i1480u device: %d\n", result);
  goto error_i1480u_add;
 }
 result = register_netdev(net_dev);
 if (result < 0) {
  dev_err(dev, "cannot register network device: %d\n", result);
  goto error_register_netdev;
 }
 i1480u_sysfs_setup(i1480u);
 if (result < 0)
  goto error_sysfs_init;
 return 0;

error_sysfs_init:
 unregister_netdev(net_dev);
error_register_netdev:
 i1480u_rm(i1480u);
error_i1480u_add:
 free_netdev(net_dev);
error_alloc_netdev:
 return result;
}
