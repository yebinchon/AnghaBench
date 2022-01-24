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

/* Variables and functions */
 int /*<<< orphan*/  WDT_DC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wdtpci_lock ; 

__attribute__((used)) static int FUNC5(void)
{
	unsigned long flags;

	/* Turn the card off */
	FUNC1(&wdtpci_lock, flags);
	FUNC0(WDT_DC);			/* Disable watchdog */
	FUNC3(8);
	FUNC4(2, 0);		/* 0 length reset pulses now */
	FUNC2(&wdtpci_lock, flags);
	return 0;
}