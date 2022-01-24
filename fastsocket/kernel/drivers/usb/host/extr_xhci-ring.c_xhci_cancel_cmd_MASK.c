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
typedef  union xhci_trb {int dummy; } xhci_trb ;
struct xhci_hcd {int xhc_state; int /*<<< orphan*/  lock; } ;
struct xhci_command {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  primary_hcd; } ;

/* Variables and functions */
 int ESHUTDOWN ; 
 int XHCI_STATE_DYING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct xhci_hcd*) ; 
 int /*<<< orphan*/  FUNC5 (struct xhci_hcd*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct xhci_hcd*,char*) ; 
 int FUNC7 (struct xhci_hcd*,struct xhci_command*,union xhci_trb*) ; 
 TYPE_1__* FUNC8 (struct xhci_hcd*) ; 
 int /*<<< orphan*/  FUNC9 (struct xhci_hcd*,char*) ; 

int FUNC10(struct xhci_hcd *xhci, struct xhci_command *command,
		union xhci_trb *cmd_trb)
{
	int retval = 0;
	unsigned long flags;

	FUNC0(&xhci->lock, flags);

	if (xhci->xhc_state & XHCI_STATE_DYING) {
		FUNC9(xhci, "Abort the command ring,"
				" but the xHCI is dead.\n");
		retval = -ESHUTDOWN;
		goto fail;
	}

	/* queue the cmd desriptor to cancel_cmd_list */
	retval = FUNC7(xhci, command, cmd_trb);
	if (retval) {
		FUNC9(xhci, "Queuing command descriptor failed.\n");
		goto fail;
	}

	/* abort command ring */
	retval = FUNC4(xhci);
	if (retval) {
		FUNC6(xhci, "Abort command ring failed\n");
		if (FUNC2(retval == -ESHUTDOWN)) {
			FUNC1(&xhci->lock, flags);
			FUNC3(FUNC8(xhci)->primary_hcd);
			FUNC5(xhci, "xHCI host controller is dead.\n");
			return retval;
		}
	}

fail:
	FUNC1(&xhci->lock, flags);
	return retval;
}