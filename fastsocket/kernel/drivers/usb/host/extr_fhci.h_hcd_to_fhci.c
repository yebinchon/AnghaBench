
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {scalar_t__ hcd_priv; } ;
struct fhci_hcd {int dummy; } ;



__attribute__((used)) static inline struct fhci_hcd *hcd_to_fhci(struct usb_hcd *hcd)
{
 return (struct fhci_hcd *)hcd->hcd_priv;
}
