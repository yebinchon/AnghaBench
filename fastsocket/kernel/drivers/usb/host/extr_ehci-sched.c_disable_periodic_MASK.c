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
typedef  int u32 ;
struct ehci_hcd {int broken_periodic; int next_uframe; TYPE_1__* regs; int /*<<< orphan*/  last_periodic_enable; scalar_t__ periodic_sched; } ;
typedef  scalar_t__ s64 ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_2__ {int /*<<< orphan*/  command; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int CMD_PSE ; 
 int /*<<< orphan*/  STS_PSS ; 
 int FUNC0 (struct ehci_hcd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ehci_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (struct ehci_hcd*,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ehci_hcd*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10 (struct ehci_hcd *ehci)
{
	u32	cmd;
	int	status;

	if (--ehci->periodic_sched)
		return 0;

	if (FUNC8(ehci->broken_periodic)) {
		/* delay experimentally determined */
		ktime_t safe = FUNC4(ehci->last_periodic_enable, 1000);
		ktime_t now = FUNC5();
		s64 delay = FUNC6(safe, now);

		if (FUNC8(delay > 0))
			FUNC7(delay);
	}

	/* did setting PSE not take effect yet?
	 * takes effect only at frame boundaries...
	 */
	status = FUNC3(ehci, &ehci->regs->status,
					     STS_PSS, STS_PSS, 9 * 125);
	if (status) {
		FUNC9(FUNC1(ehci));
		return status;
	}

	cmd = FUNC0(ehci, &ehci->regs->command) & ~CMD_PSE;
	FUNC2(ehci, cmd, &ehci->regs->command);
	/* posted write ... */

	ehci->next_uframe = -1;
	return 0;
}