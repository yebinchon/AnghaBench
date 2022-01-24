#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ehci_hcd {int scanning; int next_uframe; scalar_t__ periodic_sched; TYPE_2__* async; } ;
struct TYPE_6__ {int /*<<< orphan*/  state; } ;
struct TYPE_4__ {int /*<<< orphan*/ * ptr; } ;
struct TYPE_5__ {TYPE_1__ qh_next; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TIMER_IO_WATCHDOG ; 
 TYPE_3__* FUNC1 (struct ehci_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (struct ehci_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (struct ehci_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (struct ehci_hcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ehci_hcd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6 (struct ehci_hcd *ehci)
{
	FUNC5 (ehci, TIMER_IO_WATCHDOG);

	/* another CPU may drop ehci->lock during a schedule scan while
	 * it reports urb completions.  this flag guards against bogus
	 * attempts at re-entrant schedule scanning.
	 */
	if (ehci->scanning)
		return;
	ehci->scanning = 1;
	FUNC2 (ehci);
	if (ehci->next_uframe != -1)
		FUNC3 (ehci);
	ehci->scanning = 0;

	/* the IO watchdog guards against hardware or driver bugs that
	 * misplace IRQs, and should let us run completely without IRQs.
	 * such lossage has been observed on both VT6202 and VT8235.
	 */
	if (FUNC0 (FUNC1(ehci)->state) &&
			(ehci->async->qh_next.ptr != NULL ||
			 ehci->periodic_sched != 0))
		FUNC4 (ehci, TIMER_IO_WATCHDOG);
}