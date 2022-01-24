#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct ehci_hcd {int next_uframe; int periodic_size; int /*<<< orphan*/  last_periodic_enable; int /*<<< orphan*/  broken_periodic; TYPE_1__* regs; int /*<<< orphan*/  periodic_sched; } ;
struct TYPE_5__ {int /*<<< orphan*/  state; } ;
struct TYPE_4__ {int /*<<< orphan*/  frame_index; int /*<<< orphan*/  command; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int CMD_PSE ; 
 int /*<<< orphan*/  HC_STATE_RUNNING ; 
 int /*<<< orphan*/  STS_PSS ; 
 int FUNC0 (struct ehci_hcd*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (struct ehci_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (struct ehci_hcd*,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ehci_hcd*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC7 (struct ehci_hcd *ehci)
{
	u32	cmd;
	int	status;

	if (ehci->periodic_sched++)
		return 0;

	/* did clearing PSE did take effect yet?
	 * takes effect only at frame boundaries...
	 */
	status = FUNC3(ehci, &ehci->regs->status,
					     STS_PSS, 0, 9 * 125);
	if (status) {
		FUNC6(FUNC1(ehci));
		return status;
	}

	cmd = FUNC0(ehci, &ehci->regs->command) | CMD_PSE;
	FUNC2(ehci, cmd, &ehci->regs->command);
	/* posted write ... PSS happens later */
	FUNC1(ehci)->state = HC_STATE_RUNNING;

	/* make sure ehci_work scans these */
	ehci->next_uframe = FUNC0(ehci, &ehci->regs->frame_index)
		% (ehci->periodic_size << 3);
	if (FUNC5(ehci->broken_periodic))
		ehci->last_periodic_enable = FUNC4();
	return 0;
}