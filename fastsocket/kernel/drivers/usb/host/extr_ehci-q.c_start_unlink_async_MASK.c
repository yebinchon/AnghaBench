#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct ehci_qh* qh; } ;
struct ehci_qh {scalar_t__ qh_state; TYPE_2__ qh_next; TYPE_1__* hw; } ;
struct ehci_hcd {TYPE_3__* regs; struct ehci_qh* qh_scan_next; struct ehci_qh* async; struct ehci_qh* reclaim; int /*<<< orphan*/  lock; } ;
struct TYPE_8__ {scalar_t__ state; } ;
struct TYPE_7__ {int /*<<< orphan*/  command; } ;
struct TYPE_5__ {int /*<<< orphan*/  hw_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int CMD_ASE ; 
 int CMD_IAAD ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ HC_STATE_HALT ; 
 scalar_t__ QH_STATE_LINKED ; 
 scalar_t__ QH_STATE_UNLINK ; 
 scalar_t__ QH_STATE_UNLINK_WAIT ; 
 int /*<<< orphan*/  TIMER_ASYNC_OFF ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ehci_hcd*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC4 (struct ehci_hcd*) ; 
 int /*<<< orphan*/  FUNC5 (struct ehci_hcd*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ehci_hcd*) ; 
 int /*<<< orphan*/  FUNC7 (struct ehci_hcd*) ; 
 struct ehci_qh* FUNC8 (struct ehci_qh*) ; 
 int /*<<< orphan*/  FUNC9 (struct ehci_hcd*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static void FUNC12 (struct ehci_hcd *ehci, struct ehci_qh *qh)
{
	int		cmd = FUNC3(ehci, &ehci->regs->command);
	struct ehci_qh	*prev;

#ifdef DEBUG
	assert_spin_locked(&ehci->lock);
	if (ehci->reclaim
			|| (qh->qh_state != QH_STATE_LINKED
				&& qh->qh_state != QH_STATE_UNLINK_WAIT)
			)
		BUG ();
#endif

	/* stop async schedule right now? */
	if (FUNC10 (qh == ehci->async)) {
		/* can't get here without STS_ASS set */
		if (FUNC4(ehci)->state != HC_STATE_HALT
				&& !ehci->reclaim) {
			/* ... and CMD_IAAD clear */
			FUNC5(ehci, cmd & ~CMD_ASE,
				    &ehci->regs->command);
			FUNC11 ();
			// handshake later, if we need to
			FUNC9 (ehci, TIMER_ASYNC_OFF);
		}
		return;
	}

	qh->qh_state = QH_STATE_UNLINK;
	ehci->reclaim = qh = FUNC8 (qh);

	prev = ehci->async;
	while (prev->qh_next.qh != qh)
		prev = prev->qh_next.qh;

	prev->hw->hw_next = qh->hw->hw_next;
	prev->qh_next = qh->qh_next;
	if (ehci->qh_scan_next == qh)
		ehci->qh_scan_next = qh->qh_next.qh;
	FUNC11 ();

	/* If the controller isn't running, we don't have to wait for it */
	if (FUNC10(!FUNC1(FUNC4(ehci)->state))) {
		/* if (unlikely (qh->reclaim != 0))
		 *	this will recurse, probably not much
		 */
		FUNC6 (ehci);
		return;
	}

	cmd |= CMD_IAAD;
	FUNC5(ehci, cmd, &ehci->regs->command);
	(void)FUNC3(ehci, &ehci->regs->command);
	FUNC7(ehci);
}