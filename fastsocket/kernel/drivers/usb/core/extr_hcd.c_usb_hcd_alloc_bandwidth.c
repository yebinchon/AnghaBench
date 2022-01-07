
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_interface {struct usb_host_interface* altsetting; scalar_t__ resetting_device; } ;
struct TYPE_7__ {int bInterfaceNumber; int bNumEndpoints; } ;
struct usb_host_interface {struct usb_host_endpoint* endpoint; TYPE_3__ desc; } ;
struct usb_host_endpoint {int dummy; } ;
struct TYPE_5__ {int bNumInterfaces; } ;
struct usb_host_config {TYPE_2__** intf_cache; TYPE_1__ desc; } ;
struct usb_hcd {TYPE_4__* driver; } ;
struct usb_device {struct usb_host_endpoint** ep_in; struct usb_host_endpoint** ep_out; int bus; } ;
struct TYPE_8__ {int (* check_bandwidth ) (struct usb_hcd*,struct usb_device*) ;int (* drop_endpoint ) (struct usb_hcd*,struct usb_device*,struct usb_host_endpoint*) ;int (* add_endpoint ) (struct usb_hcd*,struct usb_device*,struct usb_host_endpoint*) ;int (* reset_bandwidth ) (struct usb_hcd*,struct usb_device*) ;} ;
struct TYPE_6__ {struct usb_host_interface* altsetting; } ;


 struct usb_hcd* bus_to_hcd (int ) ;
 int stub1 (struct usb_hcd*,struct usb_device*,struct usb_host_endpoint*) ;
 int stub10 (struct usb_hcd*,struct usb_device*) ;
 int stub2 (struct usb_hcd*,struct usb_device*,struct usb_host_endpoint*) ;
 int stub3 (struct usb_hcd*,struct usb_device*) ;
 int stub4 (struct usb_hcd*,struct usb_device*,struct usb_host_endpoint*) ;
 int stub5 (struct usb_hcd*,struct usb_device*,struct usb_host_endpoint*) ;
 int stub6 (struct usb_hcd*,struct usb_device*,struct usb_host_endpoint*) ;
 int stub7 (struct usb_hcd*,struct usb_device*,struct usb_host_endpoint*) ;
 int stub8 (struct usb_hcd*,struct usb_device*,struct usb_host_endpoint*) ;
 int stub9 (struct usb_hcd*,struct usb_device*) ;
 struct usb_host_interface* usb_altnum_to_altsetting (struct usb_interface*,int ) ;
 struct usb_host_interface* usb_find_alt_setting (struct usb_host_config*,int,int ) ;
 struct usb_interface* usb_ifnum_to_if (struct usb_device*,int) ;

int usb_hcd_alloc_bandwidth(struct usb_device *udev,
  struct usb_host_config *new_config,
  struct usb_host_interface *cur_alt,
  struct usb_host_interface *new_alt)
{
 int num_intfs, i, j;
 struct usb_host_interface *alt = 0;
 int ret = 0;
 struct usb_hcd *hcd;
 struct usb_host_endpoint *ep;

 hcd = bus_to_hcd(udev->bus);
 if (!hcd->driver->check_bandwidth)
  return 0;


 if (!new_config && !cur_alt) {
  for (i = 1; i < 16; ++i) {
   ep = udev->ep_out[i];
   if (ep)
    hcd->driver->drop_endpoint(hcd, udev, ep);
   ep = udev->ep_in[i];
   if (ep)
    hcd->driver->drop_endpoint(hcd, udev, ep);
  }
  hcd->driver->check_bandwidth(hcd, udev);
  return 0;
 }





 if (new_config) {
  num_intfs = new_config->desc.bNumInterfaces;



  for (i = 1; i < 16; ++i) {
   ep = udev->ep_out[i];
   if (ep) {
    ret = hcd->driver->drop_endpoint(hcd, udev, ep);
    if (ret < 0)
     goto reset;
   }
   ep = udev->ep_in[i];
   if (ep) {
    ret = hcd->driver->drop_endpoint(hcd, udev, ep);
    if (ret < 0)
     goto reset;
   }
  }
  for (i = 0; i < num_intfs; ++i) {
   struct usb_host_interface *first_alt;
   int iface_num;

   first_alt = &new_config->intf_cache[i]->altsetting[0];
   iface_num = first_alt->desc.bInterfaceNumber;

   alt = usb_find_alt_setting(new_config, iface_num, 0);
   if (!alt)

    alt = first_alt;

   for (j = 0; j < alt->desc.bNumEndpoints; j++) {
    ret = hcd->driver->add_endpoint(hcd, udev, &alt->endpoint[j]);
    if (ret < 0)
     goto reset;
   }
  }
 }
 if (cur_alt && new_alt) {
  struct usb_interface *iface = usb_ifnum_to_if(udev,
    cur_alt->desc.bInterfaceNumber);

  if (iface->resetting_device) {
   cur_alt = usb_altnum_to_altsetting(iface, 0);
   if (!cur_alt)
    cur_alt = &iface->altsetting[0];
  }


  for (i = 0; i < cur_alt->desc.bNumEndpoints; i++) {
   ret = hcd->driver->drop_endpoint(hcd, udev,
     &cur_alt->endpoint[i]);
   if (ret < 0)
    goto reset;
  }

  for (i = 0; i < new_alt->desc.bNumEndpoints; i++) {
   ret = hcd->driver->add_endpoint(hcd, udev,
     &new_alt->endpoint[i]);
   if (ret < 0)
    goto reset;
  }
 }
 ret = hcd->driver->check_bandwidth(hcd, udev);
reset:
 if (ret < 0)
  hcd->driver->reset_bandwidth(hcd, udev);
 return ret;
}
