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
struct xhci_segment {struct xhci_segment* next; } ;
struct xhci_ring {int /*<<< orphan*/  deq_updates; int /*<<< orphan*/  enq_updates; struct xhci_segment* first_seg; } ;
struct xhci_hcd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xhci_hcd*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct xhci_hcd*,struct xhci_segment*) ; 

void FUNC2(struct xhci_hcd *xhci, struct xhci_ring *ring)
{
	/* FIXME: Throw an error if any segment doesn't have a Link TRB */
	struct xhci_segment *seg;
	struct xhci_segment *first_seg = ring->first_seg;
	FUNC1(xhci, first_seg);

	if (!ring->enq_updates && !ring->deq_updates) {
		FUNC0(xhci, "  Ring has not been updated\n");
		return;
	}
	for (seg = first_seg->next; seg != first_seg; seg = seg->next)
		FUNC1(xhci, seg);
}