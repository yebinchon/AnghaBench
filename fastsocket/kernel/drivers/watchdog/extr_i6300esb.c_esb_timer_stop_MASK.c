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
typedef  int u8 ;

/* Variables and functions */
 int /*<<< orphan*/  ESB_LOCK_REG ; 
 int /*<<< orphan*/  ESB_RELOAD_REG ; 
 int ESB_WDT_ENABLE ; 
 int /*<<< orphan*/  ESB_WDT_RELOAD ; 
 int /*<<< orphan*/  esb_lock ; 
 int /*<<< orphan*/  esb_pci ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void)
{
	u8 val;

	FUNC3(&esb_lock);
	/* First, reset timers as suggested by the docs */
	FUNC0();
	FUNC5(ESB_WDT_RELOAD, ESB_RELOAD_REG);
	/* Then disable the WDT */
	FUNC2(esb_pci, ESB_LOCK_REG, 0x0);
	FUNC1(esb_pci, ESB_LOCK_REG, &val);
	FUNC4(&esb_lock);

	/* Returns 0 if the timer was disabled, non-zero otherwise */
	return val & ESB_WDT_ENABLE;
}