
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xhci_hcd {int quirks; int cmd_ring_state; TYPE_1__* shared_hcd; } ;
struct TYPE_2__ {int state; } ;


 int CMD_RING_STATE_RUNNING ;
 int ENODEV ;
 int HC_STATE_RUNNING ;
 int XHCI_NEC_HOST ;
 int xhci_dbg (struct xhci_hcd*,char*) ;
 int xhci_halt (struct xhci_hcd*) ;
 int xhci_ring_cmd_db (struct xhci_hcd*) ;
 scalar_t__ xhci_start (struct xhci_hcd*) ;

__attribute__((used)) static int xhci_run_finished(struct xhci_hcd *xhci)
{
 if (xhci_start(xhci)) {
  xhci_halt(xhci);
  return -ENODEV;
 }
 xhci->shared_hcd->state = HC_STATE_RUNNING;
 xhci->cmd_ring_state = CMD_RING_STATE_RUNNING;

 if (xhci->quirks & XHCI_NEC_HOST)
  xhci_ring_cmd_db(xhci);

 xhci_dbg(xhci, "Finished xhci_run for USB3 roothub\n");
 return 0;
}
