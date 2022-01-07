
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_segment {struct xhci_segment* next; } ;
struct xhci_ring {int deq_updates; int enq_updates; struct xhci_segment* first_seg; } ;
struct xhci_hcd {int dummy; } ;


 int xhci_dbg (struct xhci_hcd*,char*) ;
 int xhci_debug_segment (struct xhci_hcd*,struct xhci_segment*) ;

void xhci_debug_ring(struct xhci_hcd *xhci, struct xhci_ring *ring)
{

 struct xhci_segment *seg;
 struct xhci_segment *first_seg = ring->first_seg;
 xhci_debug_segment(xhci, first_seg);

 if (!ring->enq_updates && !ring->deq_updates) {
  xhci_dbg(xhci, "  Ring has not been updated\n");
  return;
 }
 for (seg = first_seg->next; seg != first_seg; seg = seg->next)
  xhci_debug_segment(xhci, seg);
}
