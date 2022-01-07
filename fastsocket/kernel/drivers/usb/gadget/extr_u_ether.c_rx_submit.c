
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_request {size_t length; int list; struct sk_buff* context; int complete; int buf; } ;
struct usb_ep {int maxpacket; } ;
struct sk_buff {int data; } ;
struct ethhdr {int dummy; } ;
struct eth_dev {int req_lock; int rx_reqs; TYPE_2__* port_usb; TYPE_1__* net; int lock; } ;
typedef int gfp_t ;
struct TYPE_4__ {scalar_t__ header_len; struct usb_ep* out_ep; } ;
struct TYPE_3__ {scalar_t__ mtu; } ;


 int DBG (struct eth_dev*,char*,...) ;
 int ENOMEM ;
 int ENOTCONN ;
 scalar_t__ NET_IP_ALIGN ;
 scalar_t__ RX_EXTRA ;
 int WORK_RX_MEMORY ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 int defer_kevent (struct eth_dev*,int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int list_add (int *,int *) ;
 int rx_complete ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_ep_queue (struct usb_ep*,struct usb_request*,int ) ;

__attribute__((used)) static int
rx_submit(struct eth_dev *dev, struct usb_request *req, gfp_t gfp_flags)
{
 struct sk_buff *skb;
 int retval = -ENOMEM;
 size_t size = 0;
 struct usb_ep *out;
 unsigned long flags;

 spin_lock_irqsave(&dev->lock, flags);
 if (dev->port_usb)
  out = dev->port_usb->out_ep;
 else
  out = ((void*)0);
 spin_unlock_irqrestore(&dev->lock, flags);

 if (!out)
  return -ENOTCONN;
 size += sizeof(struct ethhdr) + dev->net->mtu + RX_EXTRA;
 size += dev->port_usb->header_len;
 size += out->maxpacket - 1;
 size -= size % out->maxpacket;

 skb = alloc_skb(size + NET_IP_ALIGN, gfp_flags);
 if (skb == ((void*)0)) {
  DBG(dev, "no rx skb\n");
  goto enomem;
 }





 skb_reserve(skb, NET_IP_ALIGN);

 req->buf = skb->data;
 req->length = size;
 req->complete = rx_complete;
 req->context = skb;

 retval = usb_ep_queue(out, req, gfp_flags);
 if (retval == -ENOMEM)
enomem:
  defer_kevent(dev, WORK_RX_MEMORY);
 if (retval) {
  DBG(dev, "rx submit --> %d\n", retval);
  if (skb)
   dev_kfree_skb_any(skb);
  spin_lock_irqsave(&dev->req_lock, flags);
  list_add(&req->list, &dev->rx_reqs);
  spin_unlock_irqrestore(&dev->req_lock, flags);
 }
 return retval;
}
