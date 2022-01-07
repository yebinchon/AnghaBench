
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlp {int pal; int wss; int * rc; } ;
struct net_device {int dummy; } ;
struct i1480u {int notif_urb; struct wlp wlp; } ;


 int BUG_ON (int ) ;
 int i1480u_rx_release (struct i1480u*) ;
 int i1480u_tx_release (struct i1480u*) ;
 struct i1480u* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int usb_kill_urb (int ) ;
 int uwb_radio_stop (int *) ;
 int wlp_wss_remove (int *) ;

int i1480u_stop(struct net_device *net_dev)
{
 struct i1480u *i1480u = netdev_priv(net_dev);
 struct wlp *wlp = &i1480u->wlp;

 BUG_ON(wlp->rc == ((void*)0));
 wlp_wss_remove(&wlp->wss);
 netif_carrier_off(net_dev);



 netif_stop_queue(net_dev);
 uwb_radio_stop(&wlp->pal);
 i1480u_rx_release(i1480u);
 i1480u_tx_release(i1480u);
 return 0;
}
