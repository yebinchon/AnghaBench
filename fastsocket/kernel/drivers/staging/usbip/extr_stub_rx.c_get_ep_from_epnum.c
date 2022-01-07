
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int bNumEndpoints; } ;
struct usb_host_interface {struct usb_host_endpoint* endpoint; TYPE_3__ desc; } ;
struct TYPE_8__ {int bEndpointAddress; } ;
struct usb_host_endpoint {TYPE_4__ desc; } ;
struct TYPE_5__ {int bNumInterfaces; } ;
struct usb_host_config {TYPE_2__** interface; TYPE_1__ desc; } ;
struct usb_device {struct usb_host_config* actconfig; struct usb_host_endpoint ep0; } ;
struct TYPE_6__ {struct usb_host_interface* cur_altsetting; } ;



__attribute__((used)) static struct usb_host_endpoint *get_ep_from_epnum(struct usb_device *udev,
  int epnum0)
{
 struct usb_host_config *config;
 int i = 0, j = 0;
 struct usb_host_endpoint *ep = ((void*)0);
 int epnum;
 int found = 0;

 if (epnum0 == 0)
  return &udev->ep0;

 config = udev->actconfig;
 if (!config)
  return ((void*)0);

 for (i = 0; i < config->desc.bNumInterfaces; i++) {
  struct usb_host_interface *setting;

  setting = config->interface[i]->cur_altsetting;

  for (j = 0; j < setting->desc.bNumEndpoints; j++) {
   ep = &setting->endpoint[j];
   epnum = (ep->desc.bEndpointAddress & 0x7f);

   if (epnum == epnum0) {

    found = 1;
    break;
   }
  }
 }

 if (found)
  return ep;
 else
  return ((void*)0);
}
