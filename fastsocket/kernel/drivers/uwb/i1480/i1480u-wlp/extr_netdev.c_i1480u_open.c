
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wlp {int pal; int wss; struct uwb_rc* rc; } ;
struct uwb_rc {int dummy; } ;
struct net_device {int dummy; } ;
struct i1480u {int notif_urb; TYPE_1__* usb_iface; struct wlp wlp; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int GFP_KERNEL ;
 int dev_err (struct device*,char*,int) ;
 int i1480u_rx_release (struct i1480u*) ;
 int i1480u_rx_setup (struct i1480u*) ;
 struct i1480u* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int usb_kill_urb (int ) ;
 int usb_submit_urb (int ,int ) ;
 int uwb_radio_start (int *) ;
 int uwb_radio_stop (int *) ;
 int wlp_wss_setup (struct net_device*,int *) ;

int i1480u_open(struct net_device *net_dev)
{
 int result;
 struct i1480u *i1480u = netdev_priv(net_dev);
 struct wlp *wlp = &i1480u->wlp;
 struct uwb_rc *rc;
 struct device *dev = &i1480u->usb_iface->dev;

 rc = wlp->rc;
 result = i1480u_rx_setup(i1480u);
 if (result < 0)
  goto error_rx_setup;

 result = uwb_radio_start(&wlp->pal);
 if (result < 0)
  goto error_radio_start;

 netif_wake_queue(net_dev);
 result = wlp_wss_setup(net_dev, &wlp->wss);
 if (result < 0) {
  dev_err(dev, "Can't create WSS: %d. \n", result);
  goto error_wss_setup;
 }
 return 0;
error_wss_setup:




 uwb_radio_stop(&wlp->pal);
error_radio_start:
 netif_stop_queue(net_dev);
 i1480u_rx_release(i1480u);
error_rx_setup:
 return result;
}
