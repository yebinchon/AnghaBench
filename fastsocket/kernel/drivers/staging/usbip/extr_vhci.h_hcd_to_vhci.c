
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhci_hcd {int dummy; } ;
struct usb_hcd {scalar_t__ hcd_priv; } ;



__attribute__((used)) static inline struct vhci_hcd *hcd_to_vhci(struct usb_hcd *hcd)
{
 return (struct vhci_hcd *) (hcd->hcd_priv);
}
