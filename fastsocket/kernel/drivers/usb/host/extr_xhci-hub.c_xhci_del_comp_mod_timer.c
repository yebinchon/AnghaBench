
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct xhci_hcd {int num_usb3_ports; int quirks; scalar_t__ port_status_u0; int comp_mode_recovery_timer; } ;


 scalar_t__ PORT_PLS_MASK ;
 scalar_t__ XDEV_U0 ;
 int XHCI_COMP_MODE_QUIRK ;
 int del_timer_sync (int *) ;
 int xhci_dbg (struct xhci_hcd*,char*) ;

void xhci_del_comp_mod_timer(struct xhci_hcd *xhci, u32 status, u16 wIndex)
{
 u32 all_ports_seen_u0 = ((1 << xhci->num_usb3_ports)-1);
 bool port_in_u0 = ((status & PORT_PLS_MASK) == XDEV_U0);

 if (!(xhci->quirks & XHCI_COMP_MODE_QUIRK))
  return;

 if ((xhci->port_status_u0 != all_ports_seen_u0) && port_in_u0) {
  xhci->port_status_u0 |= 1 << wIndex;
  if (xhci->port_status_u0 == all_ports_seen_u0) {
   del_timer_sync(&xhci->comp_mode_recovery_timer);
   xhci_dbg(xhci, "All USB3 ports have entered U0 already!\n");
   xhci_dbg(xhci, "Compliance Mode Recovery Timer Deleted.\n");
  }
 }
}
