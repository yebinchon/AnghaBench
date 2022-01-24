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
 int ESB_WDT_LOCK ; 
 int /*<<< orphan*/  ESB_WDT_RELOAD ; 
 int /*<<< orphan*/  esb_lock ; 
 int /*<<< orphan*/  esb_pci ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ nowayout ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(void)
{
	u8 val;

	FUNC2(&esb_lock);
	FUNC0();
	FUNC4(ESB_WDT_RELOAD, ESB_RELOAD_REG);
	/* Enable or Enable + Lock? */
	val = ESB_WDT_ENABLE | (nowayout ? ESB_WDT_LOCK : 0x00);
	FUNC1(esb_pci, ESB_LOCK_REG, val);
	FUNC3(&esb_lock);
	return 0;
}