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
struct TYPE_5__ {int /*<<< orphan*/ * qh; } ;
struct ehci_qh {int /*<<< orphan*/  qtd_list; struct ehci_qh* reclaim; TYPE_1__ qh_next; int /*<<< orphan*/  qh_state; } ;
struct ehci_hcd {struct ehci_qh* reclaim; TYPE_3__* async; } ;
struct TYPE_8__ {int /*<<< orphan*/  state; } ;
struct TYPE_6__ {int /*<<< orphan*/ * qh; } ;
struct TYPE_7__ {TYPE_2__ qh_next; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QH_STATE_IDLE ; 
 int /*<<< orphan*/  TIMER_ASYNC_OFF ; 
 TYPE_4__* FUNC1 (struct ehci_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (struct ehci_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ehci_hcd*,struct ehci_qh*) ; 
 int /*<<< orphan*/  FUNC5 (struct ehci_hcd*,struct ehci_qh*) ; 
 int /*<<< orphan*/  FUNC6 (struct ehci_qh*) ; 
 int /*<<< orphan*/  FUNC7 (struct ehci_hcd*,struct ehci_qh*) ; 
 int /*<<< orphan*/  FUNC8 (struct ehci_hcd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9 (struct ehci_hcd *ehci)
{
	struct ehci_qh		*qh = ehci->reclaim;
	struct ehci_qh		*next;

	FUNC2(ehci);

	// qh->hw_next = cpu_to_hc32(qh->qh_dma);
	qh->qh_state = QH_STATE_IDLE;
	qh->qh_next.qh = NULL;
	FUNC6 (qh);			// refcount from reclaim

	/* other unlink(s) may be pending (in QH_STATE_UNLINK_WAIT) */
	next = qh->reclaim;
	ehci->reclaim = next;
	qh->reclaim = NULL;

	FUNC4 (ehci, qh);

	if (!FUNC3 (&qh->qtd_list)
			&& FUNC0 (FUNC1(ehci)->state))
		FUNC5 (ehci, qh);
	else {
		/* it's not free to turn the async schedule on/off; leave it
		 * active but idle for a while once it empties.
		 */
		if (FUNC0 (FUNC1(ehci)->state)
				&& ehci->async->qh_next.qh == NULL)
			FUNC8 (ehci, TIMER_ASYNC_OFF);
	}
	FUNC6(qh);			/* refcount from async list */

	if (next) {
		ehci->reclaim = NULL;
		FUNC7 (ehci, next);
	}
}