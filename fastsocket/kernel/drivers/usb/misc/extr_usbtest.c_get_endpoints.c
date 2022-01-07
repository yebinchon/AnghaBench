
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usbtest_dev {int out_iso_pipe; TYPE_3__* iso_out; int in_iso_pipe; TYPE_3__* iso_in; int out_pipe; int in_pipe; TYPE_1__* info; } ;
struct usb_interface {int num_altsetting; struct usb_host_interface* altsetting; } ;
struct TYPE_5__ {unsigned int bNumEndpoints; scalar_t__ bAlternateSetting; int bInterfaceNumber; } ;
struct usb_host_interface {TYPE_2__ desc; struct usb_host_endpoint* endpoint; } ;
struct TYPE_6__ {int bmAttributes; int bEndpointAddress; } ;
struct usb_host_endpoint {TYPE_3__ desc; } ;
struct usb_device {int dummy; } ;
struct TYPE_4__ {int iso; } ;


 int EINVAL ;
 int USB_ENDPOINT_NUMBER_MASK ;


 struct usb_device* testdev_to_usbdev (struct usbtest_dev*) ;
 scalar_t__ usb_endpoint_dir_in (TYPE_3__*) ;
 int usb_rcvbulkpipe (struct usb_device*,int) ;
 int usb_rcvisocpipe (struct usb_device*,int) ;
 int usb_set_interface (struct usb_device*,int ,scalar_t__) ;
 int usb_sndbulkpipe (struct usb_device*,int) ;
 int usb_sndisocpipe (struct usb_device*,int) ;

__attribute__((used)) static int
get_endpoints (struct usbtest_dev *dev, struct usb_interface *intf)
{
 int tmp;
 struct usb_host_interface *alt;
 struct usb_host_endpoint *in, *out;
 struct usb_host_endpoint *iso_in, *iso_out;
 struct usb_device *udev;

 for (tmp = 0; tmp < intf->num_altsetting; tmp++) {
  unsigned ep;

  in = out = ((void*)0);
  iso_in = iso_out = ((void*)0);
  alt = intf->altsetting + tmp;




  for (ep = 0; ep < alt->desc.bNumEndpoints; ep++) {
   struct usb_host_endpoint *e;

   e = alt->endpoint + ep;
   switch (e->desc.bmAttributes) {
   case 129:
    break;
   case 128:
    if (dev->info->iso)
     goto try_iso;

   default:
    continue;
   }
   if (usb_endpoint_dir_in(&e->desc)) {
    if (!in)
     in = e;
   } else {
    if (!out)
     out = e;
   }
   continue;
try_iso:
   if (usb_endpoint_dir_in(&e->desc)) {
    if (!iso_in)
     iso_in = e;
   } else {
    if (!iso_out)
     iso_out = e;
   }
  }
  if ((in && out) || (iso_in && iso_out))
   goto found;
 }
 return -EINVAL;

found:
 udev = testdev_to_usbdev (dev);
 if (alt->desc.bAlternateSetting != 0) {
  tmp = usb_set_interface (udev,
    alt->desc.bInterfaceNumber,
    alt->desc.bAlternateSetting);
  if (tmp < 0)
   return tmp;
 }

 if (in) {
  dev->in_pipe = usb_rcvbulkpipe (udev,
   in->desc.bEndpointAddress & USB_ENDPOINT_NUMBER_MASK);
  dev->out_pipe = usb_sndbulkpipe (udev,
   out->desc.bEndpointAddress & USB_ENDPOINT_NUMBER_MASK);
 }
 if (iso_in) {
  dev->iso_in = &iso_in->desc;
  dev->in_iso_pipe = usb_rcvisocpipe (udev,
    iso_in->desc.bEndpointAddress
     & USB_ENDPOINT_NUMBER_MASK);
  dev->iso_out = &iso_out->desc;
  dev->out_iso_pipe = usb_sndisocpipe (udev,
    iso_out->desc.bEndpointAddress
     & USB_ENDPOINT_NUMBER_MASK);
 }
 return 0;
}
