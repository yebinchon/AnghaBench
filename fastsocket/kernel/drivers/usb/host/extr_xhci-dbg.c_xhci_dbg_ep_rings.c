
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xhci_virt_ep {int ep_state; struct xhci_ring* ring; TYPE_1__* stream_info; } ;
struct xhci_ring {int deq_seg; } ;
struct xhci_hcd {int dummy; } ;
struct TYPE_2__ {int num_streams; struct xhci_ring** stream_rings; } ;


 int EP_HAS_STREAMS ;
 int xhci_dbg (struct xhci_hcd*,char*,unsigned int,unsigned int,...) ;
 int xhci_debug_segment (struct xhci_hcd*,int ) ;

void xhci_dbg_ep_rings(struct xhci_hcd *xhci,
  unsigned int slot_id, unsigned int ep_index,
  struct xhci_virt_ep *ep)
{
 int i;
 struct xhci_ring *ring;

 if (ep->ep_state & EP_HAS_STREAMS) {
  for (i = 1; i < ep->stream_info->num_streams; i++) {
   ring = ep->stream_info->stream_rings[i];
   xhci_dbg(xhci, "Dev %d endpoint %d stream ID %d:\n",
    slot_id, ep_index, i);
   xhci_debug_segment(xhci, ring->deq_seg);
  }
 } else {
  ring = ep->ring;
  if (!ring)
   return;
  xhci_dbg(xhci, "Dev %d endpoint ring %d:\n",
    slot_id, ep_index);
  xhci_debug_segment(xhci, ring->deq_seg);
 }
}
