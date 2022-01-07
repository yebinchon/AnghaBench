
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xhci_hcd {TYPE_1__* cmd_ring; int cmd_ring_state; } ;
struct TYPE_2__ {scalar_t__ dequeue; scalar_t__ enqueue; } ;


 int CMD_RING_STATE_RUNNING ;
 int CMD_RING_STATE_STOPPED ;
 int COMP_CMD_ABORT ;
 int COMP_CMD_STOP ;
 int xhci_cancel_cmd_in_cd_list (struct xhci_hcd*) ;
 int xhci_ring_cmd_db (struct xhci_hcd*) ;
 int xhci_search_cmd_trb_in_cd_list (struct xhci_hcd*,scalar_t__) ;

__attribute__((used)) static int handle_stopped_cmd_ring(struct xhci_hcd *xhci,
  int cmd_trb_comp_code)
{
 int cur_trb_is_good = 0;




 cur_trb_is_good = xhci_search_cmd_trb_in_cd_list(xhci,
   xhci->cmd_ring->dequeue);

 if (cmd_trb_comp_code == COMP_CMD_ABORT)
  xhci->cmd_ring_state = CMD_RING_STATE_STOPPED;
 else if (cmd_trb_comp_code == COMP_CMD_STOP) {



  xhci_cancel_cmd_in_cd_list(xhci);

  xhci->cmd_ring_state = CMD_RING_STATE_RUNNING;




  if (xhci->cmd_ring->dequeue != xhci->cmd_ring->enqueue)
   xhci_ring_cmd_db(xhci);
 }
 return cur_trb_is_good;
}
