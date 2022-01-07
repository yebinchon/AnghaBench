
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct xhci_hcd {TYPE_1__* run_regs; } ;
struct TYPE_2__ {int * rsvd; int microframe_index; } ;


 scalar_t__ XHCI_INIT_VALUE ;
 int xhci_dbg (struct xhci_hcd*,char*,TYPE_1__*,...) ;
 scalar_t__ xhci_readl (struct xhci_hcd*,int *) ;

void xhci_print_run_regs(struct xhci_hcd *xhci)
{
 u32 temp;
 int i;

 xhci_dbg(xhci, "xHCI runtime registers at %p:\n", xhci->run_regs);
 temp = xhci_readl(xhci, &xhci->run_regs->microframe_index);
 xhci_dbg(xhci, "  %p: Microframe index = 0x%x\n",
   &xhci->run_regs->microframe_index,
   (unsigned int) temp);
 for (i = 0; i < 7; ++i) {
  temp = xhci_readl(xhci, &xhci->run_regs->rsvd[i]);
  if (temp != XHCI_INIT_VALUE)
   xhci_dbg(xhci, "  WARN: %p: Rsvd[%i] = 0x%x\n",
     &xhci->run_regs->rsvd[i],
     i, (unsigned int) temp);
 }
}
