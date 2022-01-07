
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xhci_hcd {int num_usb3_ports; int port_status_u0; int comp_mode_recovery_timer; struct usb_hcd* shared_hcd; int * usb3_ports; } ;
struct usb_hcd {scalar_t__ state; } ;


 int COMP_MODE_RCVRY_MSECS ;
 scalar_t__ HC_STATE_SUSPENDED ;
 int PORT_PLS_MASK ;
 int USB_SS_PORT_LS_COMP_MOD ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int usb_hcd_poll_rh_status (struct usb_hcd*) ;
 int usb_hcd_resume_root_hub (struct usb_hcd*) ;
 int xhci_dbg (struct xhci_hcd*,char*,...) ;
 int xhci_readl (struct xhci_hcd*,int ) ;

__attribute__((used)) static void compliance_mode_recovery(unsigned long arg)
{
 struct xhci_hcd *xhci;
 struct usb_hcd *hcd;
 u32 temp;
 int i;

 xhci = (struct xhci_hcd *)arg;

 for (i = 0; i < xhci->num_usb3_ports; i++) {
  temp = xhci_readl(xhci, xhci->usb3_ports[i]);
  if ((temp & PORT_PLS_MASK) == USB_SS_PORT_LS_COMP_MOD) {




   xhci_dbg(xhci, "Compliance mode detected->port %d\n",
     i + 1);
   xhci_dbg(xhci, "Attempting compliance mode recovery\n");
   hcd = xhci->shared_hcd;

   if (hcd->state == HC_STATE_SUSPENDED)
    usb_hcd_resume_root_hub(hcd);

   usb_hcd_poll_rh_status(hcd);
  }
 }

 if (xhci->port_status_u0 != ((1 << xhci->num_usb3_ports)-1))
  mod_timer(&xhci->comp_mode_recovery_timer,
   jiffies + msecs_to_jiffies(COMP_MODE_RCVRY_MSECS));
}
