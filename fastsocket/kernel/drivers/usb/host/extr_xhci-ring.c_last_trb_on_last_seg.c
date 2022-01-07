
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int control; } ;
union xhci_trb {TYPE_1__ link; } ;
struct xhci_segment {scalar_t__ next; union xhci_trb* trbs; } ;
struct xhci_ring {scalar_t__ first_seg; } ;
struct xhci_hcd {struct xhci_ring* event_ring; } ;


 int LINK_TOGGLE ;
 size_t TRBS_PER_SEGMENT ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static bool last_trb_on_last_seg(struct xhci_hcd *xhci, struct xhci_ring *ring,
  struct xhci_segment *seg, union xhci_trb *trb)
{
 if (ring == xhci->event_ring)
  return (trb == &seg->trbs[TRBS_PER_SEGMENT]) &&
   (seg->next == xhci->event_ring->first_seg);
 else
  return trb->link.control & cpu_to_le32(LINK_TOGGLE);
}
