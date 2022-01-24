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
typedef  int /*<<< orphan*/  u8 ;
struct lcd_panel {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  ENABLE_VAUX2_DEDICATED ; 
 int /*<<< orphan*/  ENABLE_VAUX2_DEV_GRP ; 
 int /*<<< orphan*/  ENABLE_VAUX3_DEDICATED ; 
 int /*<<< orphan*/  ENABLE_VAUX3_DEV_GRP ; 
 int /*<<< orphan*/  ENABLE_VPLL2_DEDICATED ; 
 int /*<<< orphan*/  ENABLE_VPLL2_DEV_GRP ; 
 scalar_t__ OMAP3430_REV_ES1_0 ; 
 int /*<<< orphan*/  PM_RECEIVER ; 
 int /*<<< orphan*/  TWL4030_VAUX2_DEDICATED ; 
 int /*<<< orphan*/  TWL4030_VAUX2_DEV_GRP ; 
 int /*<<< orphan*/  TWL4030_VAUX3_DEDICATED ; 
 int /*<<< orphan*/  TWL4030_VAUX3_DEV_GRP ; 
 int /*<<< orphan*/  TWL4030_VPLL2_DEDICATED ; 
 int /*<<< orphan*/  TWL4030_VPLL2_DEV_GRP ; 
 int /*<<< orphan*/  backlight_gpio ; 
 int /*<<< orphan*/  enable_gpio ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct lcd_panel *panel)
{
	u8 ded_val, ded_reg;
	u8 grp_val, grp_reg;

	if (FUNC1()) {
		ded_reg = TWL4030_VAUX3_DEDICATED;
		ded_val = ENABLE_VAUX3_DEDICATED;
		grp_reg = TWL4030_VAUX3_DEV_GRP;
		grp_val = ENABLE_VAUX3_DEV_GRP;

		if (FUNC2() > OMAP3430_REV_ES1_0) {
			FUNC3(PM_RECEIVER, ENABLE_VPLL2_DEDICATED,
					TWL4030_VPLL2_DEDICATED);
			FUNC3(PM_RECEIVER, ENABLE_VPLL2_DEV_GRP,
					TWL4030_VPLL2_DEV_GRP);
		}
	} else {
		ded_reg = TWL4030_VAUX2_DEDICATED;
		ded_val = ENABLE_VAUX2_DEDICATED;
		grp_reg = TWL4030_VAUX2_DEV_GRP;
		grp_val = ENABLE_VAUX2_DEV_GRP;
	}

	FUNC0(enable_gpio, 1);
	FUNC0(backlight_gpio, 1);

	if (0 != FUNC3(PM_RECEIVER, ded_val, ded_reg))
		return -EIO;
	if (0 != FUNC3(PM_RECEIVER, grp_val, grp_reg))
		return -EIO;

	return 0;
}