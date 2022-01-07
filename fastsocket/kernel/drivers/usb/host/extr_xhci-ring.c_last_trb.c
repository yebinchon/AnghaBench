
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int control; } ;
union xhci_trb {TYPE_1__ link; } ;
struct xhci_segment {union xhci_trb* trbs; } ;
struct xhci_ring {int dummy; } ;
struct xhci_hcd {struct xhci_ring* event_ring; } ;


 size_t TRBS_PER_SEGMENT ;
 int TRB_TYPE_LINK_LE32 (int ) ;

__attribute__((used)) static int last_trb(struct xhci_hcd *xhci, struct xhci_ring *ring,
  struct xhci_segment *seg, union xhci_trb *trb)
{
 if (ring == xhci->event_ring)
  return trb == &seg->trbs[TRBS_PER_SEGMENT];
 else
  return TRB_TYPE_LINK_LE32(trb->link.control);
}
