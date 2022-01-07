
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int kref; } ;


 int kref_get (int *) ;

struct usb_hcd *usb_get_hcd (struct usb_hcd *hcd)
{
 if (hcd)
  kref_get (&hcd->kref);
 return hcd;
}
