
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uwb_rc {struct hwarc* priv; } ;
struct device {int dummy; } ;
struct usb_interface {TYPE_2__* cur_altsetting; struct device dev; } ;
struct usb_endpoint_descriptor {int bInterval; int bEndpointAddress; } ;
struct usb_device {int dummy; } ;
struct hwarc {int * rd_buffer; int * neep_urb; struct usb_interface* usb_iface; } ;
struct TYPE_4__ {TYPE_1__* endpoint; } ;
struct TYPE_3__ {struct usb_endpoint_descriptor desc; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 scalar_t__ __get_free_page (int ) ;
 int dev_err (struct device*,char*,...) ;
 int free_page (unsigned long) ;
 int hwarc_neep_cb ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int * usb_alloc_urb (int ,int ) ;
 int usb_fill_int_urb (int *,struct usb_device*,int ,int *,int ,int ,struct hwarc*,int ) ;
 int usb_free_urb (int *) ;
 int usb_rcvintpipe (struct usb_device*,int ) ;
 int usb_submit_urb (int *,int ) ;

__attribute__((used)) static int hwarc_neep_init(struct uwb_rc *rc)
{
 struct hwarc *hwarc = rc->priv;
 struct usb_interface *iface = hwarc->usb_iface;
 struct usb_device *usb_dev = interface_to_usbdev(iface);
 struct device *dev = &iface->dev;
 int result;
 struct usb_endpoint_descriptor *epd;

 epd = &iface->cur_altsetting->endpoint[0].desc;
 hwarc->rd_buffer = (void *) __get_free_page(GFP_KERNEL);
 if (hwarc->rd_buffer == ((void*)0)) {
  dev_err(dev, "Unable to allocate notification's read buffer\n");
  goto error_rd_buffer;
 }
 hwarc->neep_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (hwarc->neep_urb == ((void*)0)) {
  dev_err(dev, "Unable to allocate notification URB\n");
  goto error_urb_alloc;
 }
 usb_fill_int_urb(hwarc->neep_urb, usb_dev,
    usb_rcvintpipe(usb_dev, epd->bEndpointAddress),
    hwarc->rd_buffer, PAGE_SIZE,
    hwarc_neep_cb, hwarc, epd->bInterval);
 result = usb_submit_urb(hwarc->neep_urb, GFP_ATOMIC);
 if (result < 0) {
  dev_err(dev, "Cannot submit notification URB: %d\n", result);
  goto error_neep_submit;
 }
 return 0;

error_neep_submit:
 usb_free_urb(hwarc->neep_urb);
error_urb_alloc:
 free_page((unsigned long)hwarc->rd_buffer);
error_rd_buffer:
 return -ENOMEM;
}
