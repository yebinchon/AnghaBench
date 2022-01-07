
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd {int port_status_u0; int num_usb3_ports; } ;



__attribute__((used)) static int xhci_all_ports_seen_u0(struct xhci_hcd *xhci)
{
 return (xhci->port_status_u0 == ((1 << xhci->num_usb3_ports)-1));
}
