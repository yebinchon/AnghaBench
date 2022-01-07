
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xhci_virt_ep {TYPE_1__* ring; } ;
struct xhci_hcd {int dummy; } ;
struct xhci_ep_ctx {int deq; int ep_info; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int cycle_state; int dequeue; int deq_seg; } ;


 int EP_HAS_LSA ;
 int EP_MAXPSTREAMS_MASK ;
 int cpu_to_le32 (int) ;
 int cpu_to_le64 (int) ;
 int xhci_trb_virt_to_dma (int ,int ) ;

void xhci_setup_no_streams_ep_input_ctx(struct xhci_hcd *xhci,
  struct xhci_ep_ctx *ep_ctx,
  struct xhci_virt_ep *ep)
{
 dma_addr_t addr;
 ep_ctx->ep_info &= cpu_to_le32(~(EP_MAXPSTREAMS_MASK | EP_HAS_LSA));
 addr = xhci_trb_virt_to_dma(ep->ring->deq_seg, ep->ring->dequeue);
 ep_ctx->deq = cpu_to_le64(addr | ep->ring->cycle_state);
}
