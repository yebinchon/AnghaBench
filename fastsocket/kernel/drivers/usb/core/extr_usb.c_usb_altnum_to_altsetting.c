
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int num_altsetting; struct usb_host_interface* altsetting; } ;
struct TYPE_2__ {unsigned int bAlternateSetting; } ;
struct usb_host_interface {TYPE_1__ desc; } ;



struct usb_host_interface *usb_altnum_to_altsetting(
     const struct usb_interface *intf,
     unsigned int altnum)
{
 int i;

 for (i = 0; i < intf->num_altsetting; i++) {
  if (intf->altsetting[i].desc.bAlternateSetting == altnum)
   return &intf->altsetting[i];
 }
 return ((void*)0);
}
