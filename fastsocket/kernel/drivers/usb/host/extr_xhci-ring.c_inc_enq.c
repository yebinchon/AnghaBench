
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int control; } ;
struct TYPE_6__ {int * field; } ;
union xhci_trb {TYPE_2__ link; TYPE_1__ generic; } ;
typedef int u32 ;
struct xhci_ring {scalar_t__ type; int cycle_state; union xhci_trb* enqueue; TYPE_3__* enq_seg; int enq_updates; int num_trbs_free; } ;
struct xhci_hcd {int quirks; } ;
struct TYPE_8__ {union xhci_trb* trbs; struct TYPE_8__* next; } ;


 int TRB_CHAIN ;
 int TRB_CYCLE ;
 scalar_t__ TYPE_EVENT ;
 scalar_t__ TYPE_ISOC ;
 int XHCI_AMD_0x96_HOST ;
 int cpu_to_le32 (int) ;
 scalar_t__ last_trb (struct xhci_hcd*,struct xhci_ring*,TYPE_3__*,union xhci_trb*) ;
 scalar_t__ last_trb_on_last_seg (struct xhci_hcd*,struct xhci_ring*,TYPE_3__*,union xhci_trb*) ;
 int le32_to_cpu (int ) ;
 int wmb () ;
 int xhci_link_trb_quirk (struct xhci_hcd*) ;
 scalar_t__ xhci_trb_virt_to_dma (TYPE_3__*,union xhci_trb*) ;

__attribute__((used)) static void inc_enq(struct xhci_hcd *xhci, struct xhci_ring *ring,
   bool more_trbs_coming)
{
 u32 chain;
 union xhci_trb *next;
 unsigned long long addr;

 chain = le32_to_cpu(ring->enqueue->generic.field[3]) & TRB_CHAIN;

 if (ring->type != TYPE_EVENT &&
   !last_trb(xhci, ring, ring->enq_seg, ring->enqueue))
  ring->num_trbs_free--;
 next = ++(ring->enqueue);

 ring->enq_updates++;



 while (last_trb(xhci, ring, ring->enq_seg, next)) {
  if (ring->type != TYPE_EVENT) {
   if (!chain && !more_trbs_coming)
    break;






   if (!(ring->type == TYPE_ISOC &&
     (xhci->quirks & XHCI_AMD_0x96_HOST))
      && !xhci_link_trb_quirk(xhci)) {
    next->link.control &=
     cpu_to_le32(~TRB_CHAIN);
    next->link.control |=
     cpu_to_le32(chain);
   }

   wmb();
   next->link.control ^= cpu_to_le32(TRB_CYCLE);


   if (last_trb_on_last_seg(xhci, ring, ring->enq_seg, next)) {
    ring->cycle_state = (ring->cycle_state ? 0 : 1);
   }
  }
  ring->enq_seg = ring->enq_seg->next;
  ring->enqueue = ring->enq_seg->trbs;
  next = ring->enqueue;
 }
 addr = (unsigned long long) xhci_trb_virt_to_dma(ring->enq_seg, ring->enqueue);
}
