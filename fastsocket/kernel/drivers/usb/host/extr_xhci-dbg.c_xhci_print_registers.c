
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd {int dummy; } ;


 int xhci_print_cap_regs (struct xhci_hcd*) ;
 int xhci_print_op_regs (struct xhci_hcd*) ;
 int xhci_print_ports (struct xhci_hcd*) ;

void xhci_print_registers(struct xhci_hcd *xhci)
{
 xhci_print_cap_regs(xhci);
 xhci_print_op_regs(xhci);
 xhci_print_ports(xhci);
}
