
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_interface_descriptor {scalar_t__ bInterfaceClass; } ;
struct TYPE_8__ {scalar_t__ bNumInterfaces; int bmAttributes; int bMaxPower; int bConfigurationValue; } ;
struct usb_host_config {TYPE_4__ desc; TYPE_2__** intf_cache; } ;
struct TYPE_7__ {int bNumConfigurations; scalar_t__ bDeviceClass; } ;
struct usb_device {int bus_mA; int dev; TYPE_3__ descriptor; struct usb_host_config* config; } ;
struct TYPE_6__ {TYPE_1__* altsetting; } ;
struct TYPE_5__ {struct usb_interface_descriptor desc; } ;


 scalar_t__ USB_CLASS_VENDOR_SPEC ;
 int USB_CONFIG_ATT_SELFPOWER ;
 scalar_t__ bus_powered ;
 int dev_info (int *,char*,int,int,...) ;
 int dev_warn (int *,char*,int,int ) ;
 scalar_t__ is_activesync (struct usb_interface_descriptor*) ;
 scalar_t__ is_rndis (struct usb_interface_descriptor*) ;
 int plural (int) ;

int usb_choose_configuration(struct usb_device *udev)
{
 int i;
 int num_configs;
 int insufficient_power = 0;
 struct usb_host_config *c, *best;

 best = ((void*)0);
 c = udev->config;
 num_configs = udev->descriptor.bNumConfigurations;
 for (i = 0; i < num_configs; (i++, c++)) {
  struct usb_interface_descriptor *desc = ((void*)0);


  if (c->desc.bNumInterfaces > 0)
   desc = &c->intf_cache[0]->altsetting->desc;
  if (c->desc.bMaxPower * 2 > udev->bus_mA) {
   insufficient_power++;
   continue;
  }





  if (i == 0 && desc && (is_rndis(desc) || is_activesync(desc))) {

   continue;



  }





  else if (udev->descriptor.bDeviceClass !=
      USB_CLASS_VENDOR_SPEC &&
    (desc && desc->bInterfaceClass !=
      USB_CLASS_VENDOR_SPEC)) {
   best = c;
   break;
  }



  else if (!best)
   best = c;
 }

 if (insufficient_power > 0)
  dev_info(&udev->dev, "rejected %d configuration%s "
   "due to insufficient available bus power\n",
   insufficient_power, plural(insufficient_power));

 if (best) {
  i = best->desc.bConfigurationValue;
  dev_info(&udev->dev,
   "configuration #%d chosen from %d choice%s\n",
   i, num_configs, plural(num_configs));
 } else {
  i = -1;
  dev_warn(&udev->dev,
   "no configuration chosen from %d choice%s\n",
   num_configs, plural(num_configs));
 }
 return i;
}
