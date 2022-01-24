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
struct TYPE_2__ {int /*<<< orphan*/  control; } ;

/* Variables and functions */
 int DBGP_DONE ; 
 int FUNC0 (int) ; 
 int DBGP_ERROR ; 
 int FUNC1 (int) ; 
 int DBGP_TIMEOUT ; 
 TYPE_1__* ehci_debug ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(void)
{
	u32 ctrl;
	int loop = DBGP_TIMEOUT;

	do {
		ctrl = FUNC2(&ehci_debug->control);
		/* Stop when the transaction is finished */
		if (ctrl & DBGP_DONE)
			break;
		FUNC3(1);
	} while (--loop > 0);

	if (!loop)
		return -DBGP_TIMEOUT;

	/*
	 * Now that we have observed the completed transaction,
	 * clear the done bit.
	 */
	FUNC4(ctrl | DBGP_DONE, &ehci_debug->control);
	return (ctrl & DBGP_ERROR) ? -FUNC0(ctrl) : FUNC1(ctrl);
}