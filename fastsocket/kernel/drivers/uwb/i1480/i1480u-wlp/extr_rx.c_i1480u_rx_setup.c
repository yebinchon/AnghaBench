
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_endpoint_descriptor {int bEndpointAddress; } ;
struct sk_buff {int data; int ip_summed; struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct i1480u_rx_buf {int * urb; struct sk_buff* data; struct i1480u* i1480u; } ;
struct i1480u {int usb_dev; struct i1480u_rx_buf* rx_buf; TYPE_3__* usb_iface; int * rx_skb; struct net_device* net_dev; } ;
struct device {int dummy; } ;
struct TYPE_6__ {TYPE_2__* cur_altsetting; struct device dev; } ;
struct TYPE_5__ {TYPE_1__* endpoint; } ;
struct TYPE_4__ {struct usb_endpoint_descriptor desc; } ;


 int CHECKSUM_NONE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GFP_NOIO ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int dev_err (struct device*,char*,int,...) ;
 scalar_t__ i1480u_MAX_RX_PKT_SIZE ;
 int i1480u_RX_BUFS ;
 int i1480u_rx_cb ;
 int i1480u_rx_release (struct i1480u*) ;
 int skb_reserve (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;
 int * usb_alloc_urb (int ,int ) ;
 int usb_fill_bulk_urb (int *,int ,int ,int ,scalar_t__,int ,struct i1480u_rx_buf*) ;
 int usb_rcvbulkpipe (int ,int ) ;
 int usb_submit_urb (int *,int ) ;

int i1480u_rx_setup(struct i1480u *i1480u)
{
 int result, cnt;
 struct device *dev = &i1480u->usb_iface->dev;
 struct net_device *net_dev = i1480u->net_dev;
 struct usb_endpoint_descriptor *epd;
 struct sk_buff *skb;


 i1480u->rx_skb = ((void*)0);
 result = -ENOMEM;
 epd = &i1480u->usb_iface->cur_altsetting->endpoint[1].desc;
 for (cnt = 0; cnt < i1480u_RX_BUFS; cnt++) {
  struct i1480u_rx_buf *rx_buf = &i1480u->rx_buf[cnt];
  rx_buf->i1480u = i1480u;
  skb = dev_alloc_skb(i1480u_MAX_RX_PKT_SIZE);
  if (!skb) {
   dev_err(dev,
    "RX: cannot allocate RX buffer %d\n", cnt);
   result = -ENOMEM;
   goto error;
  }
  skb->dev = net_dev;
  skb->ip_summed = CHECKSUM_NONE;
  skb_reserve(skb, 2);
  rx_buf->data = skb;
  rx_buf->urb = usb_alloc_urb(0, GFP_KERNEL);
  if (unlikely(rx_buf->urb == ((void*)0))) {
   dev_err(dev, "RX: cannot allocate URB %d\n", cnt);
   result = -ENOMEM;
   goto error;
  }
  usb_fill_bulk_urb(rx_buf->urb, i1480u->usb_dev,
     usb_rcvbulkpipe(i1480u->usb_dev, epd->bEndpointAddress),
     rx_buf->data->data, i1480u_MAX_RX_PKT_SIZE - 2,
     i1480u_rx_cb, rx_buf);
  result = usb_submit_urb(rx_buf->urb, GFP_NOIO);
  if (unlikely(result < 0)) {
   dev_err(dev, "RX: cannot submit URB %d: %d\n",
    cnt, result);
   goto error;
  }
 }
 return 0;

error:
 i1480u_rx_release(i1480u);
 return result;
}
