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
struct lcd_panel {int dummy; } ;

/* Variables and functions */
 scalar_t__ OMAP3430_REV_ES1_0 ; 
 int /*<<< orphan*/  PM_RECEIVER ; 
 int /*<<< orphan*/  TWL4030_VPLL2_DEDICATED ; 
 int /*<<< orphan*/  TWL4030_VPLL2_DEV_GRP ; 
 int /*<<< orphan*/  backlight_gpio ; 
 int /*<<< orphan*/  enable_gpio ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct lcd_panel *panel)
{
	FUNC0(enable_gpio, 0);
	FUNC0(backlight_gpio, 0);
	if (FUNC2() > OMAP3430_REV_ES1_0) {
		FUNC3(PM_RECEIVER, 0x0, TWL4030_VPLL2_DEDICATED);
		FUNC3(PM_RECEIVER, 0x0, TWL4030_VPLL2_DEV_GRP);
		FUNC1(4);
	}
}