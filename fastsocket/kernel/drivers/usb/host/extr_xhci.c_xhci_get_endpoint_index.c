
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_endpoint_descriptor {int dummy; } ;


 scalar_t__ usb_endpoint_dir_in (struct usb_endpoint_descriptor*) ;
 int usb_endpoint_num (struct usb_endpoint_descriptor*) ;
 scalar_t__ usb_endpoint_xfer_control (struct usb_endpoint_descriptor*) ;

unsigned int xhci_get_endpoint_index(struct usb_endpoint_descriptor *desc)
{
 unsigned int index;
 if (usb_endpoint_xfer_control(desc))
  index = (unsigned int) (usb_endpoint_num(desc)*2);
 else
  index = (unsigned int) (usb_endpoint_num(desc)*2) +
   (usb_endpoint_dir_in(desc) ? 1 : 0) - 1;
 return index;
}
