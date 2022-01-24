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
typedef  int u32 ;
struct xhci_hcd {TYPE_2__* bus_state; TYPE_1__* op_regs; } ;
struct TYPE_4__ {scalar_t__ resuming_ports; scalar_t__ suspended_ports; scalar_t__ port_c_suspend; } ;
struct TYPE_3__ {int /*<<< orphan*/  status; int /*<<< orphan*/  command; } ;

/* Variables and functions */
 int CMD_RESET ; 
 int STS_CNR ; 
 int STS_HALT ; 
 int /*<<< orphan*/  FUNC0 (struct xhci_hcd*,char*) ; 
 int FUNC1 (struct xhci_hcd*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct xhci_hcd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct xhci_hcd*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct xhci_hcd*,int,int /*<<< orphan*/ *) ; 

int FUNC5(struct xhci_hcd *xhci)
{
	u32 command;
	u32 state;
	int ret, i;

	state = FUNC2(xhci, &xhci->op_regs->status);
	if ((state & STS_HALT) == 0) {
		FUNC3(xhci, "Host controller not halted, aborting reset.\n");
		return 0;
	}

	FUNC0(xhci, "// Reset the HC\n");
	command = FUNC2(xhci, &xhci->op_regs->command);
	command |= CMD_RESET;
	FUNC4(xhci, command, &xhci->op_regs->command);

	ret = FUNC1(xhci, &xhci->op_regs->command,
			CMD_RESET, 0, 10 * 1000 * 1000);
	if (ret)
		return ret;

	FUNC0(xhci, "Wait for controller to be ready for doorbell rings\n");
	/*
	 * xHCI cannot write to any doorbells or operational registers other
	 * than status until the "Controller Not Ready" flag is cleared.
	 */
	ret = FUNC1(xhci, &xhci->op_regs->status,
			STS_CNR, 0, 10 * 1000 * 1000);

	for (i = 0; i < 2; ++i) {
		xhci->bus_state[i].port_c_suspend = 0;
		xhci->bus_state[i].suspended_ports = 0;
		xhci->bus_state[i].resuming_ports = 0;
	}

	return ret;
}