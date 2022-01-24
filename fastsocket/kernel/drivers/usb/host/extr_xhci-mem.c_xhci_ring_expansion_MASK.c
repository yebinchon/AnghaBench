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
struct xhci_segment {int dummy; } ;
struct xhci_ring {unsigned int num_segs; int /*<<< orphan*/  type; int /*<<< orphan*/  cycle_state; } ;
struct xhci_hcd {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 int TRBS_PER_SEGMENT ; 
 int FUNC0 (struct xhci_hcd*,struct xhci_segment**,struct xhci_segment**,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xhci_hcd*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct xhci_hcd*,struct xhci_ring*,struct xhci_segment*,struct xhci_segment*,unsigned int) ; 

int FUNC3(struct xhci_hcd *xhci, struct xhci_ring *ring,
				unsigned int num_trbs, gfp_t flags)
{
	struct xhci_segment	*first;
	struct xhci_segment	*last;
	unsigned int		num_segs;
	unsigned int		num_segs_needed;
	int			ret;

	num_segs_needed = (num_trbs + (TRBS_PER_SEGMENT - 1) - 1) /
				(TRBS_PER_SEGMENT - 1);

	/* Allocate number of segments we needed, or double the ring size */
	num_segs = ring->num_segs > num_segs_needed ?
			ring->num_segs : num_segs_needed;

	ret = FUNC0(xhci, &first, &last,
			num_segs, ring->cycle_state, ring->type, flags);
	if (ret)
		return -ENOMEM;

	FUNC2(xhci, ring, first, last, num_segs);
	FUNC1(xhci, "ring expansion succeed, now has %d segments\n",
			ring->num_segs);

	return 0;
}