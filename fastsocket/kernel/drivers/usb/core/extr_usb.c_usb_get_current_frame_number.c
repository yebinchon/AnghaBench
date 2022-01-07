
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;


 int usb_hcd_get_frame_number (struct usb_device*) ;

int usb_get_current_frame_number(struct usb_device *dev)
{
 return usb_hcd_get_frame_number(dev);
}
