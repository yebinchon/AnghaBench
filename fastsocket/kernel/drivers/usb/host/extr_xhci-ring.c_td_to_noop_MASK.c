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
struct TYPE_2__ {int /*<<< orphan*/ * field; } ;
union xhci_trb {TYPE_1__ generic; } ;
struct xhci_td {union xhci_trb* last_trb; union xhci_trb* first_trb; struct xhci_segment* start_seg; } ;
struct xhci_segment {scalar_t__ dma; } ;
struct xhci_ring {int dummy; } ;
struct xhci_hcd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRB_CHAIN ; 
 int /*<<< orphan*/  TRB_CYCLE ; 
 int /*<<< orphan*/  TRB_TR_NOOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xhci_hcd*,struct xhci_ring*,struct xhci_segment**,union xhci_trb**) ; 
 int /*<<< orphan*/  FUNC4 (struct xhci_hcd*,char*,...) ; 
 scalar_t__ FUNC5 (struct xhci_segment*,union xhci_trb*) ; 

__attribute__((used)) static void FUNC6(struct xhci_hcd *xhci, struct xhci_ring *ep_ring,
		struct xhci_td *cur_td, bool flip_cycle)
{
	struct xhci_segment *cur_seg;
	union xhci_trb *cur_trb;

	for (cur_seg = cur_td->start_seg, cur_trb = cur_td->first_trb;
			true;
			FUNC3(xhci, ep_ring, &cur_seg, &cur_trb)) {
		if (FUNC1(cur_trb->generic.field[3])) {
			/* Unchain any chained Link TRBs, but
			 * leave the pointers intact.
			 */
			cur_trb->generic.field[3] &= FUNC2(~TRB_CHAIN);
			/* Flip the cycle bit (link TRBs can't be the first
			 * or last TRB).
			 */
			if (flip_cycle)
				cur_trb->generic.field[3] ^=
					FUNC2(TRB_CYCLE);
			FUNC4(xhci, "Cancel (unchain) link TRB\n");
			FUNC4(xhci, "Address = %p (0x%llx dma); "
					"in seg %p (0x%llx dma)\n",
					cur_trb,
					(unsigned long long)FUNC5(cur_seg, cur_trb),
					cur_seg,
					(unsigned long long)cur_seg->dma);
		} else {
			cur_trb->generic.field[0] = 0;
			cur_trb->generic.field[1] = 0;
			cur_trb->generic.field[2] = 0;
			/* Preserve only the cycle bit of this TRB */
			cur_trb->generic.field[3] &= FUNC2(TRB_CYCLE);
			/* Flip the cycle bit except on the first or last TRB */
			if (flip_cycle && cur_trb != cur_td->first_trb &&
					cur_trb != cur_td->last_trb)
				cur_trb->generic.field[3] ^=
					FUNC2(TRB_CYCLE);
			cur_trb->generic.field[3] |= FUNC2(
				FUNC0(TRB_TR_NOOP));
			FUNC4(xhci, "TRB to noop at offset 0x%llx\n",
					(unsigned long long)
					FUNC5(cur_seg, cur_trb));
		}
		if (cur_trb == cur_td->last_trb)
			break;
	}
}