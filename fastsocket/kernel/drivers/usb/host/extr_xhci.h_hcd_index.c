
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {scalar_t__ speed; } ;


 scalar_t__ HCD_USB3 ;

__attribute__((used)) static inline unsigned int hcd_index(struct usb_hcd *hcd)
{
 if (hcd->speed == HCD_USB3)
  return 0;
 else
  return 1;
}
