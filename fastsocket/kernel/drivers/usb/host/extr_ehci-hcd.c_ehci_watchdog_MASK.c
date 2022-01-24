#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ehci_hcd {int /*<<< orphan*/  lock; int /*<<< orphan*/  async; int /*<<< orphan*/  actions; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIMER_ASYNC_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct ehci_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct ehci_hcd*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(unsigned long param)
{
	struct ehci_hcd		*ehci = (struct ehci_hcd *) param;
	unsigned long		flags;

	FUNC1(&ehci->lock, flags);

	/* stop async processing after it's idled a bit */
	if (FUNC4 (TIMER_ASYNC_OFF, &ehci->actions))
		FUNC3 (ehci, ehci->async);

	/* ehci could run by timer, without IRQs ... */
	FUNC0 (ehci);

	FUNC2 (&ehci->lock, flags);
}