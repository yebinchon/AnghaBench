
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct xhci_hcd {TYPE_1__* op_regs; } ;
struct TYPE_2__ {int cmd_ring; } ;


 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;
 int xhci_dbg (struct xhci_hcd*,char*,int ) ;
 int xhci_read_64 (struct xhci_hcd*,int *) ;

void xhci_dbg_cmd_ptrs(struct xhci_hcd *xhci)
{
 u64 val;

 val = xhci_read_64(xhci, &xhci->op_regs->cmd_ring);
 xhci_dbg(xhci, "// xHC command ring deq ptr low bits + flags = @%08x\n",
   lower_32_bits(val));
 xhci_dbg(xhci, "// xHC command ring deq ptr high bits = @%08x\n",
   upper_32_bits(val));
}
