#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  control; } ;
struct TYPE_6__ {int /*<<< orphan*/ * field; } ;
union xhci_trb {TYPE_2__ link; TYPE_1__ generic; } ;
typedef  int u32 ;
struct xhci_ring {scalar_t__ type; int cycle_state; union xhci_trb* enqueue; TYPE_3__* enq_seg; int /*<<< orphan*/  enq_updates; int /*<<< orphan*/  num_trbs_free; } ;
struct xhci_hcd {int quirks; } ;
struct TYPE_8__ {union xhci_trb* trbs; struct TYPE_8__* next; } ;

/* Variables and functions */
 int TRB_CHAIN ; 
 int TRB_CYCLE ; 
 scalar_t__ TYPE_EVENT ; 
 scalar_t__ TYPE_ISOC ; 
 int XHCI_AMD_0x96_HOST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct xhci_hcd*,struct xhci_ring*,TYPE_3__*,union xhci_trb*) ; 
 scalar_t__ FUNC2 (struct xhci_hcd*,struct xhci_ring*,TYPE_3__*,union xhci_trb*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct xhci_hcd*) ; 
 scalar_t__ FUNC6 (TYPE_3__*,union xhci_trb*) ; 

__attribute__((used)) static void FUNC7(struct xhci_hcd *xhci, struct xhci_ring *ring,
			bool more_trbs_coming)
{
	u32 chain;
	union xhci_trb *next;
	unsigned long long addr;

	chain = FUNC3(ring->enqueue->generic.field[3]) & TRB_CHAIN;
	/* If this is not event ring, there is one less usable TRB */
	if (ring->type != TYPE_EVENT &&
			!FUNC1(xhci, ring, ring->enq_seg, ring->enqueue))
		ring->num_trbs_free--;
	next = ++(ring->enqueue);

	ring->enq_updates++;
	/* Update the dequeue pointer further if that was a link TRB or we're at
	 * the end of an event ring segment (which doesn't have link TRBS)
	 */
	while (FUNC1(xhci, ring, ring->enq_seg, next)) {
		if (ring->type != TYPE_EVENT) {
			/*
			 * If the caller doesn't plan on enqueueing more
			 * TDs before ringing the doorbell, then we
			 * don't want to give the link TRB to the
			 * hardware just yet.  We'll give the link TRB
			 * back in prepare_ring() just before we enqueue
			 * the TD at the top of the ring.
			 */
			if (!chain && !more_trbs_coming)
				break;

			/* If we're not dealing with 0.95 hardware or
			 * isoc rings on AMD 0.96 host,
			 * carry over the chain bit of the previous TRB
			 * (which may mean the chain bit is cleared).
			 */
			if (!(ring->type == TYPE_ISOC &&
					(xhci->quirks & XHCI_AMD_0x96_HOST))
						&& !FUNC5(xhci)) {
				next->link.control &=
					FUNC0(~TRB_CHAIN);
				next->link.control |=
					FUNC0(chain);
			}
			/* Give this link TRB to the hardware */
			FUNC4();
			next->link.control ^= FUNC0(TRB_CYCLE);

			/* Toggle the cycle bit after the last ring segment. */
			if (FUNC2(xhci, ring, ring->enq_seg, next)) {
				ring->cycle_state = (ring->cycle_state ? 0 : 1);
			}
		}
		ring->enq_seg = ring->enq_seg->next;
		ring->enqueue = ring->enq_seg->trbs;
		next = ring->enqueue;
	}
	addr = (unsigned long long) FUNC6(ring->enq_seg, ring->enqueue);
}