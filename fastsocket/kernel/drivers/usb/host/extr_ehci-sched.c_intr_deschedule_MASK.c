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
struct ehci_qh_hw {int hw_info2; int /*<<< orphan*/  hw_next; } ;
struct ehci_qh {scalar_t__ qh_state; int needs_rescan; int /*<<< orphan*/  qtd_list; struct ehci_qh_hw* hw; } ;
struct ehci_hcd {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ehci_hcd*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QH_CMASK ; 
 scalar_t__ QH_STATE_COMPLETING ; 
 scalar_t__ QH_STATE_IDLE ; 
 scalar_t__ QH_STATE_LINKED ; 
 int FUNC2 (struct ehci_hcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ehci_hcd*,char*,struct ehci_qh*,int) ; 
 TYPE_1__* FUNC4 (struct ehci_hcd*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ehci_hcd*,struct ehci_qh*) ; 
 int FUNC7 (struct ehci_hcd*,struct ehci_qh*) ; 
 int /*<<< orphan*/  FUNC8 (struct ehci_hcd*,struct ehci_qh*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void FUNC11 (struct ehci_hcd *ehci, struct ehci_qh *qh)
{
	unsigned		wait;
	struct ehci_qh_hw	*hw = qh->hw;
	int			rc;

	/* If the QH isn't linked then there's nothing we can do
	 * unless we were called during a giveback, in which case
	 * qh_completions() has to deal with it.
	 */
	if (qh->qh_state != QH_STATE_LINKED) {
		if (qh->qh_state == QH_STATE_COMPLETING)
			qh->needs_rescan = 1;
		return;
	}

	FUNC8 (ehci, qh);

	/* simple/paranoid:  always delay, expecting the HC needs to read
	 * qh->hw_next or finish a writeback after SPLIT/CSPLIT ... and
	 * expect khubd to clean up after any CSPLITs we won't issue.
	 * active high speed queues may need bigger delays...
	 */
	if (FUNC5 (&qh->qtd_list)
			|| (FUNC2(ehci, QH_CMASK)
					& hw->hw_info2) != 0)
		wait = 2;
	else
		wait = 55;	/* worst case: 3 * 1024 */

	FUNC9 (wait);
	qh->qh_state = QH_STATE_IDLE;
	hw->hw_next = FUNC0(ehci);
	FUNC10 ();

	FUNC6(ehci, qh);

	/* reschedule QH iff another request is queued */
	if (!FUNC5(&qh->qtd_list) &&
			FUNC1(FUNC4(ehci)->state)) {
		rc = FUNC7(ehci, qh);

		/* An error here likely indicates handshake failure
		 * or no space left in the schedule.  Neither fault
		 * should happen often ...
		 *
		 * FIXME kill the now-dysfunctional queued urbs
		 */
		if (rc != 0)
			FUNC3(ehci, "can't reschedule qh %p, err %d\n",
					qh, rc);
	}
}