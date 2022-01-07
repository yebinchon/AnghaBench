
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_interface {TYPE_3__* altsetting; } ;
struct TYPE_4__ {int bNumInterfaces; } ;
struct usb_host_config {struct usb_interface** interface; TYPE_1__ desc; } ;
struct usb_device {struct usb_host_config* actconfig; } ;
struct TYPE_5__ {unsigned int bInterfaceNumber; } ;
struct TYPE_6__ {TYPE_2__ desc; } ;



struct usb_interface *usb_ifnum_to_if(const struct usb_device *dev,
          unsigned ifnum)
{
 struct usb_host_config *config = dev->actconfig;
 int i;

 if (!config)
  return ((void*)0);
 for (i = 0; i < config->desc.bNumInterfaces; i++)
  if (config->interface[i]->altsetting[0]
    .desc.bInterfaceNumber == ifnum)
   return config->interface[i];

 return ((void*)0);
}
