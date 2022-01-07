
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {struct usb_hcd* primary_hcd; } ;



int usb_hcd_is_primary_hcd(struct usb_hcd *hcd)
{
 if (!hcd->primary_hcd)
  return 1;
 return hcd == hcd->primary_hcd;
}
