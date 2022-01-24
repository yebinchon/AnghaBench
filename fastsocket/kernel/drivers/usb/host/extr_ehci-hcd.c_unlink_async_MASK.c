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
struct ehci_qh {scalar_t__ qh_state; int needs_rescan; struct ehci_qh* reclaim; } ;
struct ehci_hcd {struct ehci_qh* reclaim; } ;
struct TYPE_2__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ QH_STATE_COMPLETING ; 
 scalar_t__ QH_STATE_LINKED ; 
 scalar_t__ QH_STATE_UNLINK_WAIT ; 
 TYPE_1__* FUNC1 (struct ehci_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (struct ehci_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (struct ehci_hcd*,struct ehci_qh*) ; 

__attribute__((used)) static void FUNC4 (struct ehci_hcd *ehci, struct ehci_qh *qh)
{
	/* failfast */
	if (!FUNC0(FUNC1(ehci)->state) && ehci->reclaim)
		FUNC2(ehci);

	/* If the QH isn't linked then there's nothing we can do
	 * unless we were called during a giveback, in which case
	 * qh_completions() has to deal with it.
	 */
	if (qh->qh_state != QH_STATE_LINKED) {
		if (qh->qh_state == QH_STATE_COMPLETING)
			qh->needs_rescan = 1;
		return;
	}

	/* defer till later if busy */
	if (ehci->reclaim) {
		struct ehci_qh		*last;

		for (last = ehci->reclaim;
				last->reclaim;
				last = last->reclaim)
			continue;
		qh->qh_state = QH_STATE_UNLINK_WAIT;
		last->reclaim = qh;

	/* start IAA cycle */
	} else
		FUNC3 (ehci, qh);
}