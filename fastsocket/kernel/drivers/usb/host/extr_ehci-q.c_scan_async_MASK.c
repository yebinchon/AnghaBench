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
struct TYPE_7__ {struct ehci_qh* qh; } ;
struct ehci_qh {scalar_t__ qh_state; scalar_t__ unlink_time; int /*<<< orphan*/  qtd_list; scalar_t__ needs_rescan; TYPE_3__ qh_next; } ;
struct ehci_hcd {int /*<<< orphan*/  reclaim; struct ehci_qh* qh_scan_next; TYPE_2__* async; } ;
typedef  enum ehci_timer_action { ____Placeholder_ehci_timer_action } ehci_timer_action ;
struct TYPE_8__ {int /*<<< orphan*/  state; } ;
struct TYPE_5__ {struct ehci_qh* qh; } ;
struct TYPE_6__ {TYPE_1__ qh_next; } ;

/* Variables and functions */
 scalar_t__ EHCI_SHRINK_JIFFIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ QH_STATE_LINKED ; 
 int TIMER_ASYNC_SHRINK ; 
 int TIMER_IO_WATCHDOG ; 
 TYPE_4__* FUNC1 (struct ehci_hcd*) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ehci_hcd*,struct ehci_qh*) ; 
 struct ehci_qh* FUNC4 (struct ehci_qh*) ; 
 int /*<<< orphan*/  FUNC5 (struct ehci_qh*) ; 
 int /*<<< orphan*/  FUNC6 (struct ehci_hcd*,struct ehci_qh*) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct ehci_hcd*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ehci_hcd*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ehci_hcd*,struct ehci_qh*) ; 

__attribute__((used)) static void FUNC11 (struct ehci_hcd *ehci)
{
	bool			stopped;
	struct ehci_qh		*qh;
	enum ehci_timer_action	action = TIMER_IO_WATCHDOG;

	FUNC9 (ehci, TIMER_ASYNC_SHRINK);
	stopped = !FUNC0(FUNC1(ehci)->state);

	ehci->qh_scan_next = ehci->async->qh_next.qh;
	while (ehci->qh_scan_next) {
		qh = ehci->qh_scan_next;
		ehci->qh_scan_next = qh->qh_next.qh;
 rescan:
		/* clean any finished work for this qh */
		if (!FUNC2(&qh->qtd_list)) {
			int temp;

			/*
			 * Unlinks could happen here; completion reporting
			 * drops the lock.  That's why ehci->qh_scan_next
			 * always holds the next qh to scan; if the next qh
			 * gets unlinked then ehci->qh_scan_next is adjusted
			 * in start_unlink_async().
			 */
			qh = FUNC4(qh);
			temp = FUNC3(ehci, qh);
			if (qh->needs_rescan)
				FUNC10(ehci, qh);
			qh->unlink_time = jiffies + EHCI_SHRINK_JIFFIES;
			FUNC5(qh);
			if (temp != 0)
				goto rescan;
		}

		/* unlink idle entries, reducing DMA usage as well
		 * as HCD schedule-scanning costs.  delay for any qh
		 * we just scanned, there's a not-unusual case that it
		 * doesn't stay idle for long.
		 * (plus, avoids some kind of re-activation race.)
		 */
		if (FUNC2(&qh->qtd_list)
				&& qh->qh_state == QH_STATE_LINKED) {
			if (!ehci->reclaim && (stopped ||
					FUNC7(jiffies, qh->unlink_time)))
				FUNC6(ehci, qh);
			else
				action = TIMER_ASYNC_SHRINK;
		}
	}
	if (action == TIMER_ASYNC_SHRINK)
		FUNC8 (ehci, TIMER_ASYNC_SHRINK);
}