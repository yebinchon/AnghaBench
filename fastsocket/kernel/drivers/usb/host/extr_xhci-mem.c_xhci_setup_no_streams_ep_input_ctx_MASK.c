#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct xhci_virt_ep {TYPE_1__* ring; } ;
struct xhci_hcd {int dummy; } ;
struct xhci_ep_ctx {int /*<<< orphan*/  deq; int /*<<< orphan*/  ep_info; } ;
typedef  int dma_addr_t ;
struct TYPE_2__ {int cycle_state; int /*<<< orphan*/  dequeue; int /*<<< orphan*/  deq_seg; } ;

/* Variables and functions */
 int EP_HAS_LSA ; 
 int EP_MAXPSTREAMS_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct xhci_hcd *xhci,
		struct xhci_ep_ctx *ep_ctx,
		struct xhci_virt_ep *ep)
{
	dma_addr_t addr;
	ep_ctx->ep_info &= FUNC0(~(EP_MAXPSTREAMS_MASK | EP_HAS_LSA));
	addr = FUNC2(ep->ring->deq_seg, ep->ring->dequeue);
	ep_ctx->deq  = FUNC1(addr | ep->ring->cycle_state);
}