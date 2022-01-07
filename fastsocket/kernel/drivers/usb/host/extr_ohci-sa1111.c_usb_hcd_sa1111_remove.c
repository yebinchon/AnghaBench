
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int rsrc_len; int rsrc_start; } ;
struct sa1111_dev {int dummy; } ;


 int release_mem_region (int ,int ) ;
 int sa1111_stop_hc (struct sa1111_dev*) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

void usb_hcd_sa1111_remove (struct usb_hcd *hcd, struct sa1111_dev *dev)
{
 usb_remove_hcd(hcd);
 sa1111_stop_hc(dev);
 release_mem_region(hcd->rsrc_start, hcd->rsrc_len);
 usb_put_hcd(hcd);
}
