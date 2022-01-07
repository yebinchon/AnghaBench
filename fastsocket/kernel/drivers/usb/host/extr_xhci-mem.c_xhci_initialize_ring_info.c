
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xhci_ring {unsigned int cycle_state; int num_trbs_free; int num_segs; scalar_t__ deq_updates; scalar_t__ enq_updates; TYPE_1__* first_seg; TYPE_1__* deq_seg; int enqueue; int dequeue; TYPE_1__* enq_seg; } ;
struct TYPE_2__ {int trbs; } ;


 int TRBS_PER_SEGMENT ;

__attribute__((used)) static void xhci_initialize_ring_info(struct xhci_ring *ring,
     unsigned int cycle_state)
{

 ring->enqueue = ring->first_seg->trbs;
 ring->enq_seg = ring->first_seg;
 ring->dequeue = ring->enqueue;
 ring->deq_seg = ring->first_seg;







 ring->cycle_state = cycle_state;

 ring->enq_updates = 0;
 ring->deq_updates = 0;





 ring->num_trbs_free = ring->num_segs * (TRBS_PER_SEGMENT - 1) - 1;
}
