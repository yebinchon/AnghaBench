
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xhci_hcd {TYPE_1__* op_regs; } ;
struct TYPE_2__ {int command; } ;


 int CMD_EIE ;
 int CMD_HSEIE ;
 int CMD_LRESET ;
 int CMD_RESET ;
 int CMD_RUN ;
 int xhci_dbg (struct xhci_hcd*,char*,...) ;
 int xhci_readl (struct xhci_hcd*,int *) ;

__attribute__((used)) static void xhci_print_command_reg(struct xhci_hcd *xhci)
{
 u32 temp;

 temp = xhci_readl(xhci, &xhci->op_regs->command);
 xhci_dbg(xhci, "USBCMD 0x%x:\n", temp);
 xhci_dbg(xhci, "  HC is %s\n",
   (temp & CMD_RUN) ? "running" : "being stopped");
 xhci_dbg(xhci, "  HC has %sfinished hard reset\n",
   (temp & CMD_RESET) ? "not " : "");
 xhci_dbg(xhci, "  Event Interrupts %s\n",
   (temp & CMD_EIE) ? "enabled " : "disabled");
 xhci_dbg(xhci, "  Host System Error Interrupts %s\n",
   (temp & CMD_HSEIE) ? "enabled " : "disabled");
 xhci_dbg(xhci, "  HC has %sfinished light reset\n",
   (temp & CMD_LRESET) ? "not " : "");
}
