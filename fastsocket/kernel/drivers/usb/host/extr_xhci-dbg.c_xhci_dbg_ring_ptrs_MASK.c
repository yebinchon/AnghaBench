#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct xhci_ring {int /*<<< orphan*/  enq_updates; int /*<<< orphan*/  enqueue; int /*<<< orphan*/  enq_seg; int /*<<< orphan*/  deq_updates; int /*<<< orphan*/  dequeue; int /*<<< orphan*/  deq_seg; } ;
struct xhci_hcd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xhci_hcd*,char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct xhci_hcd *xhci, struct xhci_ring *ring)
{
	FUNC0(xhci, "Ring deq = %p (virt), 0x%llx (dma)\n",
			ring->dequeue,
			(unsigned long long)FUNC1(ring->deq_seg,
							    ring->dequeue));
	FUNC0(xhci, "Ring deq updated %u times\n",
			ring->deq_updates);
	FUNC0(xhci, "Ring enq = %p (virt), 0x%llx (dma)\n",
			ring->enqueue,
			(unsigned long long)FUNC1(ring->enq_seg,
							    ring->enqueue));
	FUNC0(xhci, "Ring enq updated %u times\n",
			ring->enq_updates);
}