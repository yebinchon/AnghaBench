
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xhci_hcd {int cmd_ring_state; int xhc_state; TYPE_1__* op_regs; } ;
struct TYPE_2__ {int status; } ;


 int CMD_RING_STATE_STOPPED ;
 int STS_HALT ;
 int XHCI_MAX_HALT_USEC ;
 int XHCI_STATE_HALTED ;
 int xhci_dbg (struct xhci_hcd*,char*) ;
 int xhci_handshake (struct xhci_hcd*,int *,int ,int ,int ) ;
 int xhci_quiesce (struct xhci_hcd*) ;
 int xhci_warn (struct xhci_hcd*,char*,int ) ;

int xhci_halt(struct xhci_hcd *xhci)
{
 int ret;
 xhci_dbg(xhci, "// Halt the HC\n");
 xhci_quiesce(xhci);

 ret = xhci_handshake(xhci, &xhci->op_regs->status,
   STS_HALT, STS_HALT, XHCI_MAX_HALT_USEC);
 if (!ret) {
  xhci->xhc_state |= XHCI_STATE_HALTED;
  xhci->cmd_ring_state = CMD_RING_STATE_STOPPED;
 } else
  xhci_warn(xhci, "Host not halted after %u microseconds.\n",
    XHCI_MAX_HALT_USEC);
 return ret;
}
