
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * field; } ;
union xhci_trb {TYPE_1__ generic; } ;
struct xhci_hcd {int quirks; TYPE_4__** devs; } ;
struct xhci_event_cmd {int status; } ;
struct TYPE_8__ {TYPE_3__* eps; TYPE_2__* in_ctx; } ;
struct TYPE_7__ {int ep_state; } ;
struct TYPE_6__ {int dma; } ;


 int EP_HALTED ;
 int GET_COMP_CODE (int ) ;
 unsigned int TRB_TO_EP_INDEX (int ) ;
 int TRB_TO_SLOT_ID (int ) ;
 int XHCI_RESET_EP_QUIRK ;
 int le32_to_cpu (int ) ;
 int ring_doorbell_for_active_rings (struct xhci_hcd*,int,unsigned int) ;
 int xhci_dbg (struct xhci_hcd*,char*,...) ;
 int xhci_queue_configure_endpoint (struct xhci_hcd*,int ,int,int) ;
 int xhci_ring_cmd_db (struct xhci_hcd*) ;

__attribute__((used)) static void handle_reset_ep_completion(struct xhci_hcd *xhci,
  struct xhci_event_cmd *event,
  union xhci_trb *trb)
{
 int slot_id;
 unsigned int ep_index;

 slot_id = TRB_TO_SLOT_ID(le32_to_cpu(trb->generic.field[3]));
 ep_index = TRB_TO_EP_INDEX(le32_to_cpu(trb->generic.field[3]));



 xhci_dbg(xhci, "Ignoring reset ep completion code of %u\n",
   GET_COMP_CODE(le32_to_cpu(event->status)));





 if (xhci->quirks & XHCI_RESET_EP_QUIRK) {
  xhci_dbg(xhci, "Queueing configure endpoint command\n");
  xhci_queue_configure_endpoint(xhci,
    xhci->devs[slot_id]->in_ctx->dma, slot_id,
    0);
  xhci_ring_cmd_db(xhci);
 } else {

  xhci->devs[slot_id]->eps[ep_index].ep_state &= ~EP_HALTED;
  ring_doorbell_for_active_rings(xhci, slot_id, ep_index);
 }
}
