#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct xhci_hcd {TYPE_1__* ir_set; TYPE_2__* event_ring; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_4__ {int /*<<< orphan*/  dequeue; int /*<<< orphan*/  deq_seg; } ;
struct TYPE_3__ {int /*<<< orphan*/  erst_dequeue; } ;

/* Variables and functions */
 int ERST_EHB ; 
 int ERST_PTR_MASK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct xhci_hcd*,char*) ; 
 int FUNC2 (struct xhci_hcd*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xhci_hcd*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct xhci_hcd*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct xhci_hcd *xhci)
{
	u64 temp;
	dma_addr_t deq;

	deq = FUNC3(xhci->event_ring->deq_seg,
			xhci->event_ring->dequeue);
	if (deq == 0 && !FUNC0())
		FUNC4(xhci, "WARN something wrong with SW event ring "
				"dequeue ptr.\n");
	/* Update HC event ring dequeue pointer */
	temp = FUNC2(xhci, &xhci->ir_set->erst_dequeue);
	temp &= ERST_PTR_MASK;
	/* Don't clear the EHB bit (which is RW1C) because
	 * there might be more events to service.
	 */
	temp &= ~ERST_EHB;
	FUNC1(xhci, "// Write event ring dequeue pointer, "
			"preserving EHB bit\n");
	FUNC5(xhci, ((u64) deq & (u64) ~ERST_PTR_MASK) | temp,
			&xhci->ir_set->erst_dequeue);
}