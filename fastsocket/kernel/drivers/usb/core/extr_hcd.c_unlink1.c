
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {TYPE_1__* driver; } ;
struct urb {int dev; } ;
struct TYPE_2__ {int (* urb_dequeue ) (struct usb_hcd*,struct urb*,int) ;} ;


 scalar_t__ is_root_hub (int ) ;
 int stub1 (struct usb_hcd*,struct urb*,int) ;
 int usb_rh_urb_dequeue (struct usb_hcd*,struct urb*,int) ;

__attribute__((used)) static int unlink1(struct usb_hcd *hcd, struct urb *urb, int status)
{
 int value;

 if (is_root_hub(urb->dev))
  value = usb_rh_urb_dequeue(hcd, urb, status);
 else {




  value = hcd->driver->urb_dequeue(hcd, urb, status);
 }
 return value;
}
