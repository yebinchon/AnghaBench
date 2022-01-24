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
 int DISABLE_W83877F ; 
 int ENABLE_W83877F ; 
 scalar_t__ ENABLE_W83877F_PORT ; 
 int /*<<< orphan*/  WDT_PING ; 
 int WDT_REGISTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  wdt_spinlock ; 

__attribute__((used)) static void FUNC4(int writeval)
{
	unsigned long flags;
	FUNC2(&wdt_spinlock, flags);

	/* buy some time */
	FUNC0(WDT_PING);

	/* make W83877F available */
	FUNC1(ENABLE_W83877F,  ENABLE_W83877F_PORT);
	FUNC1(ENABLE_W83877F,  ENABLE_W83877F_PORT);

	/* enable watchdog */
	FUNC1(WDT_REGISTER,    ENABLE_W83877F_PORT);
	FUNC1(writeval,        ENABLE_W83877F_PORT+1);

	/* lock the W8387FF away */
	FUNC1(DISABLE_W83877F, ENABLE_W83877F_PORT);

	FUNC3(&wdt_spinlock, flags);
}