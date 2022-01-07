
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface_descriptor {scalar_t__ bInterfaceClass; int bInterfaceSubClass; int bInterfaceProtocol; } ;


 scalar_t__ USB_CLASS_COMM ;

__attribute__((used)) static int is_rndis(struct usb_interface_descriptor *desc)
{
 return desc->bInterfaceClass == USB_CLASS_COMM
  && desc->bInterfaceSubClass == 2
  && desc->bInterfaceProtocol == 0xff;
}
