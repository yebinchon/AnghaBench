
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd {int hci_version; int quirks; int lock; } ;
struct usb_hcd {int dummy; } ;


 int GFP_KERNEL ;
 int XHCI_COMP_MODE_QUIRK ;
 int XHCI_LINK_TRB_QUIRK ;
 int compliance_mode_recovery_timer_init (struct xhci_hcd*) ;
 scalar_t__ compliance_mode_recovery_timer_quirk_check () ;
 struct xhci_hcd* hcd_to_xhci (struct usb_hcd*) ;
 scalar_t__ link_quirk ;
 int spin_lock_init (int *) ;
 int xhci_dbg (struct xhci_hcd*,char*) ;
 int xhci_mem_init (struct xhci_hcd*,int ) ;

int xhci_init(struct usb_hcd *hcd)
{
 struct xhci_hcd *xhci = hcd_to_xhci(hcd);
 int retval = 0;

 xhci_dbg(xhci, "xhci_init\n");
 spin_lock_init(&xhci->lock);
 if (xhci->hci_version == 0x95 && link_quirk) {
  xhci_dbg(xhci, "QUIRK: Not clearing Link TRB chain bits.\n");
  xhci->quirks |= XHCI_LINK_TRB_QUIRK;
 } else {
  xhci_dbg(xhci, "xHCI doesn't need link TRB QUIRK\n");
 }
 retval = xhci_mem_init(xhci, GFP_KERNEL);
 xhci_dbg(xhci, "Finished xhci_init\n");


 if (compliance_mode_recovery_timer_quirk_check()) {
  xhci->quirks |= XHCI_COMP_MODE_QUIRK;
  compliance_mode_recovery_timer_init(xhci);
 }

 return retval;
}
