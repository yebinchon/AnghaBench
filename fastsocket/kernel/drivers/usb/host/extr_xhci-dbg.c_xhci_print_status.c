
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xhci_hcd {TYPE_1__* op_regs; } ;
struct TYPE_2__ {int status; } ;


 int STS_EINT ;
 int STS_FATAL ;
 int STS_HALT ;
 int xhci_dbg (struct xhci_hcd*,char*,...) ;
 int xhci_readl (struct xhci_hcd*,int *) ;

__attribute__((used)) static void xhci_print_status(struct xhci_hcd *xhci)
{
 u32 temp;

 temp = xhci_readl(xhci, &xhci->op_regs->status);
 xhci_dbg(xhci, "USBSTS 0x%x:\n", temp);
 xhci_dbg(xhci, "  Event ring is %sempty\n",
   (temp & STS_EINT) ? "not " : "");
 xhci_dbg(xhci, "  %sHost System Error\n",
   (temp & STS_FATAL) ? "WARNING: " : "No ");
 xhci_dbg(xhci, "  HC is %s\n",
   (temp & STS_HALT) ? "halted" : "running");
}
