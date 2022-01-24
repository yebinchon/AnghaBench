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
typedef  scalar_t__ u32 ;
struct xhci_hcd {TYPE_1__* run_regs; } ;
struct TYPE_2__ {int /*<<< orphan*/ * rsvd; int /*<<< orphan*/  microframe_index; } ;

/* Variables and functions */
 scalar_t__ XHCI_INIT_VALUE ; 
 int /*<<< orphan*/  FUNC0 (struct xhci_hcd*,char*,TYPE_1__*,...) ; 
 scalar_t__ FUNC1 (struct xhci_hcd*,int /*<<< orphan*/ *) ; 

void FUNC2(struct xhci_hcd *xhci)
{
	u32 temp;
	int i;

	FUNC0(xhci, "xHCI runtime registers at %p:\n", xhci->run_regs);
	temp = FUNC1(xhci, &xhci->run_regs->microframe_index);
	FUNC0(xhci, "  %p: Microframe index = 0x%x\n",
			&xhci->run_regs->microframe_index,
			(unsigned int) temp);
	for (i = 0; i < 7; ++i) {
		temp = FUNC1(xhci, &xhci->run_regs->rsvd[i]);
		if (temp != XHCI_INIT_VALUE)
			FUNC0(xhci, "  WARN: %p: Rsvd[%i] = 0x%x\n",
					&xhci->run_regs->rsvd[i],
					i, (unsigned int) temp);
	}
}