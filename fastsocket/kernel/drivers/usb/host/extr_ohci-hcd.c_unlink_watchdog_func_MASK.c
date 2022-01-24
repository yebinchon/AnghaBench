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
struct ohci_hcd {unsigned int eds_scheduled; int zf_delay; int /*<<< orphan*/  lock; int /*<<< orphan*/  unlink_watchdog; TYPE_1__* regs; struct ed* ed_to_check; struct ed** periodic; } ;
struct ed {struct ed* ed_next; } ;
struct TYPE_2__ {int /*<<< orphan*/  control; int /*<<< orphan*/  intrenable; int /*<<< orphan*/  intrstatus; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ HZ ; 
 unsigned int NUM_INTS ; 
 int /*<<< orphan*/  OHCI_INTR_SF ; 
 int /*<<< orphan*/  FUNC0 (struct ohci_hcd*,struct ed*) ; 
 scalar_t__ jiffies ; 
 struct ed** FUNC1 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ed**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ohci_hcd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ohci_hcd*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC9(unsigned long _ohci)
{
	unsigned long	flags;
	unsigned	max;
	unsigned	seen_count = 0;
	unsigned	i;
	struct ed	**seen = NULL;
	struct ohci_hcd	*ohci = (struct ohci_hcd *) _ohci;

	FUNC7(&ohci->lock, flags);
	max = ohci->eds_scheduled;
	if (!max)
		goto done;

	if (ohci->ed_to_check)
		goto out;

	seen = FUNC1(max, sizeof *seen, GFP_ATOMIC);
	if (!seen)
		goto out;

	for (i = 0; i < NUM_INTS; i++) {
		struct ed	*ed = ohci->periodic[i];

		while (ed) {
			unsigned	temp;

			/* scan this branch of the periodic schedule tree */
			for (temp = 0; temp < seen_count; temp++) {
				if (seen[temp] == ed) {
					/* we've checked it and what's after */
					ed = NULL;
					break;
				}
			}
			if (!ed)
				break;
			seen[seen_count++] = ed;
			if (!FUNC0(ohci, ed)) {
				ed = ed->ed_next;
				continue;
			}

			/* HC's TD list is empty, but HCD sees at least one
			 * TD that's not been sent through the donelist.
			 */
			ohci->ed_to_check = ed;
			ohci->zf_delay = 2;

			/* The HC may wait until the next frame to report the
			 * TD as done through the donelist and INTR_WDH.  (We
			 * just *assume* it's not a multi-TD interrupt URB;
			 * those could defer the IRQ more than one frame, using
			 * DI...)  Check again after the next INTR_SF.
			 */
			FUNC5(ohci, OHCI_INTR_SF,
					&ohci->regs->intrstatus);
			FUNC5(ohci, OHCI_INTR_SF,
					&ohci->regs->intrenable);

			/* flush those writes */
			(void) FUNC4(ohci, &ohci->regs->control);

			goto out;
		}
	}
out:
	FUNC2(seen);
	if (ohci->eds_scheduled)
		FUNC3(&ohci->unlink_watchdog, FUNC6(jiffies + HZ));
done:
	FUNC8(&ohci->lock, flags);
}