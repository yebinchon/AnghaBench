
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd {int op_regs; } ;


 int xhci_dbg (struct xhci_hcd*,char*,int ) ;
 int xhci_print_command_reg (struct xhci_hcd*) ;
 int xhci_print_status (struct xhci_hcd*) ;

__attribute__((used)) static void xhci_print_op_regs(struct xhci_hcd *xhci)
{
 xhci_dbg(xhci, "xHCI operational registers at %p:\n", xhci->op_regs);
 xhci_print_command_reg(xhci);
 xhci_print_status(xhci);
}
