
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct xhci_hcd {TYPE_1__* ir_set; TYPE_2__* event_ring; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_4__ {int dequeue; int deq_seg; } ;
struct TYPE_3__ {int erst_dequeue; } ;


 int ERST_EHB ;
 int ERST_PTR_MASK ;
 int in_interrupt () ;
 int xhci_dbg (struct xhci_hcd*,char*) ;
 int xhci_read_64 (struct xhci_hcd*,int *) ;
 scalar_t__ xhci_trb_virt_to_dma (int ,int ) ;
 int xhci_warn (struct xhci_hcd*,char*) ;
 int xhci_write_64 (struct xhci_hcd*,int,int *) ;

__attribute__((used)) static void xhci_set_hc_event_deq(struct xhci_hcd *xhci)
{
 u64 temp;
 dma_addr_t deq;

 deq = xhci_trb_virt_to_dma(xhci->event_ring->deq_seg,
   xhci->event_ring->dequeue);
 if (deq == 0 && !in_interrupt())
  xhci_warn(xhci, "WARN something wrong with SW event ring "
    "dequeue ptr.\n");

 temp = xhci_read_64(xhci, &xhci->ir_set->erst_dequeue);
 temp &= ERST_PTR_MASK;



 temp &= ~ERST_EHB;
 xhci_dbg(xhci, "// Write event ring dequeue pointer, "
   "preserving EHB bit\n");
 xhci_write_64(xhci, ((u64) deq & (u64) ~ERST_PTR_MASK) | temp,
   &xhci->ir_set->erst_dequeue);
}
