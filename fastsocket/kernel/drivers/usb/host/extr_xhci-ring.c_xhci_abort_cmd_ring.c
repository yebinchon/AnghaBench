
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct xhci_hcd {int cmd_ring_state; int xhc_state; TYPE_1__* op_regs; } ;
struct TYPE_2__ {int cmd_ring; } ;


 int CMD_RING_ABORT ;
 int CMD_RING_RUNNING ;
 int CMD_RING_STATE_ABORTED ;
 int CMD_RING_STATE_RUNNING ;
 int ESHUTDOWN ;
 int XHCI_STATE_DYING ;
 int xhci_dbg (struct xhci_hcd*,char*) ;
 int xhci_err (struct xhci_hcd*,char*) ;
 int xhci_halt (struct xhci_hcd*) ;
 int xhci_handshake (struct xhci_hcd*,int *,int,int ,int) ;
 int xhci_quiesce (struct xhci_hcd*) ;
 int xhci_read_64 (struct xhci_hcd*,int *) ;
 int xhci_write_64 (struct xhci_hcd*,int,int *) ;

__attribute__((used)) static int xhci_abort_cmd_ring(struct xhci_hcd *xhci)
{
 u64 temp_64;
 int ret;

 xhci_dbg(xhci, "Abort command ring\n");

 if (!(xhci->cmd_ring_state & CMD_RING_STATE_RUNNING)) {
  xhci_dbg(xhci, "The command ring isn't running, "
    "Have the command ring been stopped?\n");
  return 0;
 }

 temp_64 = xhci_read_64(xhci, &xhci->op_regs->cmd_ring);
 if (!(temp_64 & CMD_RING_RUNNING)) {
  xhci_dbg(xhci, "Command ring had been stopped\n");
  return 0;
 }
 xhci->cmd_ring_state = CMD_RING_STATE_ABORTED;
 xhci_write_64(xhci, temp_64 | CMD_RING_ABORT,
   &xhci->op_regs->cmd_ring);
 ret = xhci_handshake(xhci, &xhci->op_regs->cmd_ring,
   CMD_RING_RUNNING, 0, 5 * 1000 * 1000);
 if (ret < 0) {
  xhci_err(xhci, "Stopped the command ring failed, "
    "maybe the host is dead\n");
  xhci->xhc_state |= XHCI_STATE_DYING;
  xhci_quiesce(xhci);
  xhci_halt(xhci);
  return -ESHUTDOWN;
 }

 return 0;
}
