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
struct TYPE_2__ {int /*<<< orphan*/  control; int /*<<< orphan*/  intr_target; int /*<<< orphan*/  segment_ptr; } ;
union xhci_trb {TYPE_1__ link; } ;
typedef  int u64 ;
struct xhci_segment {int dma; union xhci_trb* trbs; } ;
struct xhci_hcd {int dummy; } ;

/* Variables and functions */
 int TRBS_PER_SEGMENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xhci_hcd*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct xhci_hcd *xhci, struct xhci_segment *seg)
{
	int i;
	u64 addr = seg->dma;
	union xhci_trb *trb = seg->trbs;

	for (i = 0; i < TRBS_PER_SEGMENT; ++i) {
		trb = &seg->trbs[i];
		FUNC4(xhci, "@%016llx %08x %08x %08x %08x\n", addr,
			 FUNC2(FUNC1(trb->link.segment_ptr)),
			 FUNC3(FUNC1(trb->link.segment_ptr)),
			 FUNC0(trb->link.intr_target),
			 FUNC0(trb->link.control));
		addr += sizeof(*trb);
	}
}