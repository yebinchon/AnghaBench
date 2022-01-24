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
struct xhci_hcd {int /*<<< orphan*/  cmd_ring_state; int /*<<< orphan*/  xhc_state; TYPE_1__* op_regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_RING_STATE_STOPPED ; 
 int /*<<< orphan*/  STS_HALT ; 
 int /*<<< orphan*/  XHCI_MAX_HALT_USEC ; 
 int /*<<< orphan*/  XHCI_STATE_HALTED ; 
 int /*<<< orphan*/  FUNC0 (struct xhci_hcd*,char*) ; 
 int FUNC1 (struct xhci_hcd*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xhci_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (struct xhci_hcd*,char*,int /*<<< orphan*/ ) ; 

int FUNC4(struct xhci_hcd *xhci)
{
	int ret;
	FUNC0(xhci, "// Halt the HC\n");
	FUNC2(xhci);

	ret = FUNC1(xhci, &xhci->op_regs->status,
			STS_HALT, STS_HALT, XHCI_MAX_HALT_USEC);
	if (!ret) {
		xhci->xhc_state |= XHCI_STATE_HALTED;
		xhci->cmd_ring_state = CMD_RING_STATE_STOPPED;
	} else
		FUNC3(xhci, "Host not halted after %u microseconds.\n",
				XHCI_MAX_HALT_USEC);
	return ret;
}