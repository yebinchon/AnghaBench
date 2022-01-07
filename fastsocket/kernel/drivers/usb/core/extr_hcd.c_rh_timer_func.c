
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;


 int usb_hcd_poll_rh_status (struct usb_hcd*) ;

__attribute__((used)) static void rh_timer_func (unsigned long _hcd)
{
 usb_hcd_poll_rh_status((struct usb_hcd *) _hcd);
}
