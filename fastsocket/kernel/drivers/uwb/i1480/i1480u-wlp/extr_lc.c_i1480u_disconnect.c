
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct net_device {int dummy; } ;
struct i1480u {int notif_urb; struct net_device* net_dev; } ;


 int free_netdev (struct net_device*) ;
 int i1480u_rm (struct i1480u*) ;
 int i1480u_sysfs_release (struct i1480u*) ;
 int netif_stop_queue (struct net_device*) ;
 int unregister_netdev (struct net_device*) ;
 struct i1480u* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void i1480u_disconnect(struct usb_interface *iface)
{
 struct i1480u *i1480u;
 struct net_device *net_dev;

 i1480u = usb_get_intfdata(iface);
 net_dev = i1480u->net_dev;
 netif_stop_queue(net_dev);



 i1480u_sysfs_release(i1480u);
 unregister_netdev(net_dev);
 i1480u_rm(i1480u);
 free_netdev(net_dev);
}
