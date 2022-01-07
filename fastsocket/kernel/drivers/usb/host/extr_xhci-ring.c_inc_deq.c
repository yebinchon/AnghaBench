
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct xhci_ring {scalar_t__ type; int cycle_state; int dequeue; TYPE_1__* deq_seg; int num_trbs_free; int deq_updates; } ;
struct xhci_hcd {int dummy; } ;
struct TYPE_4__ {int trbs; struct TYPE_4__* next; } ;


 scalar_t__ TYPE_EVENT ;
 scalar_t__ last_trb (struct xhci_hcd*,struct xhci_ring*,TYPE_1__*,int ) ;
 scalar_t__ last_trb_on_last_seg (struct xhci_hcd*,struct xhci_ring*,TYPE_1__*,int ) ;
 scalar_t__ xhci_trb_virt_to_dma (TYPE_1__*,int ) ;

__attribute__((used)) static void inc_deq(struct xhci_hcd *xhci, struct xhci_ring *ring)
{
 unsigned long long addr;

 ring->deq_updates++;





 if (ring->type != TYPE_EVENT &&
   !last_trb(xhci, ring, ring->deq_seg, ring->dequeue))
  ring->num_trbs_free++;

 do {





  if (last_trb(xhci, ring, ring->deq_seg, ring->dequeue)) {
   if (ring->type == TYPE_EVENT &&
     last_trb_on_last_seg(xhci, ring,
      ring->deq_seg, ring->dequeue)) {
    ring->cycle_state = (ring->cycle_state ? 0 : 1);
   }
   ring->deq_seg = ring->deq_seg->next;
   ring->dequeue = ring->deq_seg->trbs;
  } else {
   ring->dequeue++;
  }
 } while (last_trb(xhci, ring, ring->deq_seg, ring->dequeue));

 addr = (unsigned long long) xhci_trb_virt_to_dma(ring->deq_seg, ring->dequeue);
}
