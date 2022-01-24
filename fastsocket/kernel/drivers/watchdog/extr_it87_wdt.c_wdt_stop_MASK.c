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
 int /*<<< orphan*/  GPIO ; 
 int /*<<< orphan*/  WDTCFG ; 
 int /*<<< orphan*/  WDTCTRL ; 
 int /*<<< orphan*/  WDTVALLSB ; 
 int /*<<< orphan*/  WDTVALMSB ; 
 int WDT_TOV1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  spinlock ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void)
{
	unsigned long flags;

	FUNC0(&spinlock, flags);
	FUNC2();

	FUNC5(GPIO);
	FUNC4(0x00, WDTCTRL);
	FUNC4(WDT_TOV1, WDTCFG);
	FUNC4(0x00, WDTVALMSB);
	FUNC4(0x00, WDTVALLSB);

	FUNC3();
	FUNC1(&spinlock, flags);
}