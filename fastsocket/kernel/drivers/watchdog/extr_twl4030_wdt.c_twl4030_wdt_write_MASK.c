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
 int /*<<< orphan*/  TWL4030_MODULE_PM_RECEIVER ; 
 int /*<<< orphan*/  TWL4030_WATCHDOG_CFG_REG_OFFS ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(unsigned char val)
{
	return FUNC0(TWL4030_MODULE_PM_RECEIVER, val,
					TWL4030_WATCHDOG_CFG_REG_OFFS);
}