
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union xhci_trb {int dummy; } xhci_trb ;
struct xhci_segment {struct xhci_segment* next; TYPE_2__* trbs; } ;
struct xhci_ring {int type; int td_list; struct xhci_segment* first_seg; } ;
struct xhci_hcd {int dummy; } ;
typedef enum xhci_ring_type { ____Placeholder_xhci_ring_type } xhci_ring_type ;
struct TYPE_3__ {int control; } ;
struct TYPE_4__ {TYPE_1__ link; } ;


 int INIT_LIST_HEAD (int *) ;
 int TRBS_PER_SEGMENT ;
 int TRB_CYCLE ;
 int memset (TYPE_2__*,int ,int) ;
 int xhci_initialize_ring_info (struct xhci_ring*,unsigned int) ;
 int xhci_link_segments (struct xhci_hcd*,struct xhci_segment*,struct xhci_segment*,int) ;

__attribute__((used)) static void xhci_reinit_cached_ring(struct xhci_hcd *xhci,
   struct xhci_ring *ring, unsigned int cycle_state,
   enum xhci_ring_type type)
{
 struct xhci_segment *seg = ring->first_seg;
 int i;

 do {
  memset(seg->trbs, 0,
    sizeof(union xhci_trb)*TRBS_PER_SEGMENT);
  if (cycle_state == 0) {
   for (i = 0; i < TRBS_PER_SEGMENT; i++)
    seg->trbs[i].link.control |= TRB_CYCLE;
  }

  xhci_link_segments(xhci, seg, seg->next, type);
  seg = seg->next;
 } while (seg != ring->first_seg);
 ring->type = type;
 xhci_initialize_ring_info(ring, cycle_state);



 INIT_LIST_HEAD(&ring->td_list);
}
