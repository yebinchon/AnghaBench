
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct wlp_tx_hdr {int dummy; } ;
struct wlp {int start_queue; int stop_queue; int fill_device_info; int xmit_frame; } ;
struct TYPE_7__ {int data; } ;
struct uwb_dev {TYPE_1__ mac_addr; } ;
struct uwb_rc {struct uwb_dev uwb_dev; } ;
struct usb_interface {TYPE_3__* cur_altsetting; int dev; } ;
struct usb_endpoint_descriptor {int bInterval; int bEndpointAddress; } ;
struct usb_device {int dummy; } ;
struct untd_hdr_cmp {int dummy; } ;
struct net_device {int mtu; int tx_queue_len; int watchdog_timeo; int * netdev_ops; int features; int flags; scalar_t__ hard_header_len; int dev_addr; } ;
struct TYPE_10__ {int restart_ts; int threshold; int max; } ;
struct i1480u {TYPE_5__* usb_dev; TYPE_4__ tx_inflight; int notif_buffer; int * notif_urb; struct usb_interface* usb_iface; struct net_device* net_dev; struct wlp wlp; } ;
struct TYPE_11__ {int dev; } ;
struct TYPE_9__ {TYPE_2__* endpoint; } ;
struct TYPE_8__ {struct usb_endpoint_descriptor desc; } ;


 int ENODEV ;
 int ENOMEM ;
 scalar_t__ ETH_HLEN ;
 int GFP_KERNEL ;
 int HZ ;
 int IFF_MULTICAST ;
 int NETIF_F_FRAGLIST ;
 int NETIF_F_HIGHDMA ;
 int NETIF_F_SG ;
 scalar_t__ WLP_DATA_HLEN ;
 int dev_err (int *,char*) ;
 int ether_setup (struct net_device*) ;
 int i1480u_TX_INFLIGHT_MAX ;
 int i1480u_TX_INFLIGHT_THRESHOLD ;
 int i1480u_fill_device_info ;
 int i1480u_netdev_ops ;
 int i1480u_notif_cb ;
 int i1480u_start_queue ;
 int i1480u_stop_queue ;
 int i1480u_xmit_frame ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int jiffies ;
 int memcpy (int ,int ,int) ;
 int * usb_alloc_urb (int ,int ) ;
 int usb_fill_int_urb (int *,struct usb_device*,int ,int ,int,int ,struct i1480u*,int ) ;
 TYPE_5__* usb_get_dev (struct usb_device*) ;
 int usb_put_dev (TYPE_5__*) ;
 int usb_rcvintpipe (struct usb_device*,int ) ;
 int usb_set_intfdata (struct usb_interface*,struct i1480u*) ;
 struct uwb_rc* uwb_rc_get_by_grandpa (int *) ;
 int uwb_rc_put (struct uwb_rc*) ;
 int wlp_remove (struct wlp*) ;
 int wlp_setup (struct wlp*,struct uwb_rc*,struct net_device*) ;

__attribute__((used)) static
int i1480u_add(struct i1480u *i1480u, struct usb_interface *iface)
{
 int result = -ENODEV;
 struct wlp *wlp = &i1480u->wlp;
 struct usb_device *usb_dev = interface_to_usbdev(iface);
 struct net_device *net_dev = i1480u->net_dev;
 struct uwb_rc *rc;
 struct uwb_dev *uwb_dev;




 i1480u->usb_dev = usb_get_dev(usb_dev);
 i1480u->usb_iface = iface;
 rc = uwb_rc_get_by_grandpa(&i1480u->usb_dev->dev);
 if (rc == ((void*)0)) {
  dev_err(&iface->dev, "Cannot get associated UWB Radio "
   "Controller\n");
  goto out;
 }
 wlp->xmit_frame = i1480u_xmit_frame;
 wlp->fill_device_info = i1480u_fill_device_info;
 wlp->stop_queue = i1480u_stop_queue;
 wlp->start_queue = i1480u_start_queue;
 result = wlp_setup(wlp, rc, net_dev);
 if (result < 0) {
  dev_err(&iface->dev, "Cannot setup WLP\n");
  goto error_wlp_setup;
 }
 result = 0;
 ether_setup(net_dev);
 uwb_dev = &rc->uwb_dev;


 memcpy(net_dev->dev_addr, uwb_dev->mac_addr.data,
        sizeof(net_dev->dev_addr));

 net_dev->hard_header_len = sizeof(struct untd_hdr_cmp)
  + sizeof(struct wlp_tx_hdr)
  + WLP_DATA_HLEN
  + ETH_HLEN;
 net_dev->mtu = 3500;
 net_dev->tx_queue_len = 20;



 net_dev->flags &= ~IFF_MULTICAST;
 net_dev->features &= ~NETIF_F_SG;
 net_dev->features &= ~NETIF_F_FRAGLIST;

 net_dev->features |= NETIF_F_HIGHDMA;
 net_dev->watchdog_timeo = 5*HZ;

 net_dev->netdev_ops = &i1480u_netdev_ops;
 i1480u->tx_inflight.max = i1480u_TX_INFLIGHT_MAX;
 i1480u->tx_inflight.threshold = i1480u_TX_INFLIGHT_THRESHOLD;
 i1480u->tx_inflight.restart_ts = jiffies;
 usb_set_intfdata(iface, i1480u);
 return result;




 wlp_remove(wlp);
error_wlp_setup:
 uwb_rc_put(rc);
out:
 usb_put_dev(i1480u->usb_dev);
 return result;
}
