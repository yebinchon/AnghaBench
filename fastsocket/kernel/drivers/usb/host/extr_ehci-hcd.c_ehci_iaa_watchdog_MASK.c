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
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  lost_iaa; } ;
struct ehci_hcd {int /*<<< orphan*/  lock; TYPE_2__* regs; TYPE_1__ stats; int /*<<< orphan*/  iaa_watchdog; scalar_t__ reclaim; } ;
struct TYPE_6__ {int /*<<< orphan*/  state; } ;
struct TYPE_5__ {int /*<<< orphan*/  status; int /*<<< orphan*/  command; } ;

/* Variables and functions */
 int CMD_IAAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int STS_IAA ; 
 int FUNC2 (struct ehci_hcd*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC3 (struct ehci_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (struct ehci_hcd*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ehci_hcd*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ehci_hcd*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(unsigned long param)
{
	struct ehci_hcd		*ehci = (struct ehci_hcd *) param;
	unsigned long		flags;

	FUNC7 (&ehci->lock, flags);

	/* Lost IAA irqs wedge things badly; seen first with a vt8235.
	 * So we need this watchdog, but must protect it against both
	 * (a) SMP races against real IAA firing and retriggering, and
	 * (b) clean HC shutdown, when IAA watchdog was pending.
	 */
	if (ehci->reclaim
			&& !FUNC9(&ehci->iaa_watchdog)
			&& FUNC1(FUNC3(ehci)->state)) {
		u32 cmd, status;

		/* If we get here, IAA is *REALLY* late.  It's barely
		 * conceivable that the system is so busy that CMD_IAAD
		 * is still legitimately set, so let's be sure it's
		 * clear before we read STS_IAA.  (The HC should clear
		 * CMD_IAAD when it sets STS_IAA.)
		 */
		cmd = FUNC2(ehci, &ehci->regs->command);
		if (cmd & CMD_IAAD)
			FUNC5(ehci, cmd & ~CMD_IAAD,
					&ehci->regs->command);

		/* If IAA is set here it either legitimately triggered
		 * before we cleared IAAD above (but _way_ late, so we'll
		 * still count it as lost) ... or a silicon erratum:
		 * - VIA seems to set IAA without triggering the IRQ;
		 * - IAAD potentially cleared without setting IAA.
		 */
		status = FUNC2(ehci, &ehci->regs->status);
		if ((status & STS_IAA) || !(cmd & CMD_IAAD)) {
			FUNC0 (ehci->stats.lost_iaa);
			FUNC5(ehci, STS_IAA, &ehci->regs->status);
		}

		FUNC4(ehci, "IAA watchdog: status %x cmd %x\n",
				status, cmd);
		FUNC6(ehci);
	}

	FUNC8(&ehci->lock, flags);
}