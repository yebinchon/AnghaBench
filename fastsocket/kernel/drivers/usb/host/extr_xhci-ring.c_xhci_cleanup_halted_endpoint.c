
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union xhci_trb {int dummy; } xhci_trb ;
struct xhci_virt_ep {unsigned int stopped_stream; union xhci_trb* stopped_trb; struct xhci_td* stopped_td; int ep_state; } ;
struct xhci_td {TYPE_2__* urb; } ;
struct xhci_hcd {TYPE_1__** devs; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {struct xhci_virt_ep* eps; } ;


 int EP_HALTED ;
 int xhci_cleanup_stalled_ring (struct xhci_hcd*,int ,unsigned int) ;
 int xhci_queue_reset_ep (struct xhci_hcd*,unsigned int,unsigned int) ;
 int xhci_ring_cmd_db (struct xhci_hcd*) ;

__attribute__((used)) static void xhci_cleanup_halted_endpoint(struct xhci_hcd *xhci,
  unsigned int slot_id, unsigned int ep_index,
  unsigned int stream_id,
  struct xhci_td *td, union xhci_trb *event_trb)
{
 struct xhci_virt_ep *ep = &xhci->devs[slot_id]->eps[ep_index];
 ep->ep_state |= EP_HALTED;
 ep->stopped_td = td;
 ep->stopped_trb = event_trb;
 ep->stopped_stream = stream_id;

 xhci_queue_reset_ep(xhci, slot_id, ep_index);
 xhci_cleanup_stalled_ring(xhci, td->urb->dev, ep_index);

 ep->stopped_td = ((void*)0);
 ep->stopped_trb = ((void*)0);
 ep->stopped_stream = 0;

 xhci_ring_cmd_db(xhci);
}
