
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {TYPE_1__* driver; } ;
struct usb_device {int bus; } ;
struct TYPE_2__ {int (* get_frame_number ) (struct usb_hcd*) ;} ;


 int ESHUTDOWN ;
 int HCD_RH_RUNNING (struct usb_hcd*) ;
 struct usb_hcd* bus_to_hcd (int ) ;
 int stub1 (struct usb_hcd*) ;

int usb_hcd_get_frame_number (struct usb_device *udev)
{
 struct usb_hcd *hcd = bus_to_hcd(udev->bus);

 if (!HCD_RH_RUNNING(hcd))
  return -ESHUTDOWN;
 return hcd->driver->get_frame_number (hcd);
}
