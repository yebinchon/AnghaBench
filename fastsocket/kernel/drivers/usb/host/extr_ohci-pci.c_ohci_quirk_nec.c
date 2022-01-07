
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct ohci_hcd {int nec_work; int flags; } ;


 int INIT_WORK (int *,int ) ;
 int OHCI_QUIRK_NEC ;
 struct ohci_hcd* hcd_to_ohci (struct usb_hcd*) ;
 int ohci_dbg (struct ohci_hcd*,char*) ;
 int ohci_quirk_nec_worker ;

__attribute__((used)) static int ohci_quirk_nec(struct usb_hcd *hcd)
{
 struct ohci_hcd *ohci = hcd_to_ohci (hcd);

 ohci->flags |= OHCI_QUIRK_NEC;
 INIT_WORK(&ohci->nec_work, ohci_quirk_nec_worker);
 ohci_dbg (ohci, "enabled NEC chipset lost interrupt quirk\n");

 return 0;
}
