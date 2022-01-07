
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_ring {int enq_updates; int enqueue; int enq_seg; int deq_updates; int dequeue; int deq_seg; } ;
struct xhci_hcd {int dummy; } ;


 int xhci_dbg (struct xhci_hcd*,char*,int ,...) ;
 scalar_t__ xhci_trb_virt_to_dma (int ,int ) ;

void xhci_dbg_ring_ptrs(struct xhci_hcd *xhci, struct xhci_ring *ring)
{
 xhci_dbg(xhci, "Ring deq = %p (virt), 0x%llx (dma)\n",
   ring->dequeue,
   (unsigned long long)xhci_trb_virt_to_dma(ring->deq_seg,
           ring->dequeue));
 xhci_dbg(xhci, "Ring deq updated %u times\n",
   ring->deq_updates);
 xhci_dbg(xhci, "Ring enq = %p (virt), 0x%llx (dma)\n",
   ring->enqueue,
   (unsigned long long)xhci_trb_virt_to_dma(ring->enq_seg,
           ring->enqueue));
 xhci_dbg(xhci, "Ring enq updated %u times\n",
   ring->enq_updates);
}
