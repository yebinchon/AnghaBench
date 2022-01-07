
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {scalar_t__ hcd_priv; } ;
struct ssb_ohci_device {int dummy; } ;



__attribute__((used)) static inline
struct ssb_ohci_device *hcd_to_ssb_ohci(struct usb_hcd *hcd)
{
 return (struct ssb_ohci_device *)(hcd->hcd_priv);
}
