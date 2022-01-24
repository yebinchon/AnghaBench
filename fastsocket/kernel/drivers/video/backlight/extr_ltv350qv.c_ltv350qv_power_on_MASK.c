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
struct ltv350qv {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int LTV_CHS_480 ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  LTV_DATACTL ; 
 int LTV_DF_RGB ; 
 int LTV_DPL_SAMPLE_RISING ; 
 int FUNC1 (int) ; 
 int LTV_DSC ; 
 int LTV_DS_SAME ; 
 int /*<<< orphan*/  LTV_ENTRY_MODE ; 
 int LTV_EPL_ACTIVE_LOW ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  LTV_GATECTL1 ; 
 int /*<<< orphan*/  LTV_GATECTL2 ; 
 int /*<<< orphan*/  LTV_HBP ; 
 int LTV_HSPL_ACTIVE_LOW ; 
 int /*<<< orphan*/  LTV_IFCTL ; 
 int FUNC5 (int) ; 
 int LTV_NMD ; 
 int LTV_NW_INV_1LINE ; 
 int LTV_POWER_ON ; 
 int /*<<< orphan*/  LTV_PWRCTL1 ; 
 int /*<<< orphan*/  LTV_PWRCTL2 ; 
 int LTV_REV ; 
 int LTV_RGB_BGR ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  LTV_SOTCTL ; 
 int LTV_SS_RIGHT_TO_LEFT ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  LTV_VBP ; 
 int LTV_VCOML_ENABLE ; 
 int LTV_VCOMOUT_ENABLE ; 
 int LTV_VCOM_DISABLE ; 
 int LTV_VSPL_ACTIVE_LOW ; 
 int FUNC8 (struct ltv350qv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct ltv350qv *lcd)
{
	int ret;

	/* Power On Reset Display off State */
	if (FUNC8(lcd, LTV_PWRCTL1, 0x0000))
		goto err;
	FUNC9(15);

	/* Power Setting Function 1 */
	if (FUNC8(lcd, LTV_PWRCTL1, LTV_VCOM_DISABLE))
		goto err;
	if (FUNC8(lcd, LTV_PWRCTL2, LTV_VCOML_ENABLE))
		goto err_power1;

	/* Power Setting Function 2 */
	if (FUNC8(lcd, LTV_PWRCTL1,
			       LTV_VCOM_DISABLE | FUNC1(5)
			       | FUNC7(5)))
		goto err_power2;

	FUNC9(55);

	/* Instruction Setting */
	ret = FUNC8(lcd, LTV_IFCTL,
				 LTV_NMD | LTV_REV | FUNC5(0x1d));
	ret |= FUNC8(lcd, LTV_DATACTL,
				  LTV_DS_SAME | LTV_CHS_480
				  | LTV_DF_RGB | LTV_RGB_BGR);
	ret |= FUNC8(lcd, LTV_ENTRY_MODE,
				  LTV_VSPL_ACTIVE_LOW
				  | LTV_HSPL_ACTIVE_LOW
				  | LTV_DPL_SAMPLE_RISING
				  | LTV_EPL_ACTIVE_LOW
				  | LTV_SS_RIGHT_TO_LEFT);
	ret |= FUNC8(lcd, LTV_GATECTL1, FUNC0(3));
	ret |= FUNC8(lcd, LTV_GATECTL2,
				  LTV_NW_INV_1LINE | FUNC3(3));
	ret |= FUNC8(lcd, LTV_VBP, 0x000a);
	ret |= FUNC8(lcd, LTV_HBP, 0x0021);
	ret |= FUNC8(lcd, LTV_SOTCTL, FUNC6(3) | FUNC2(0));
	ret |= FUNC8(lcd, FUNC4(0), 0x0103);
	ret |= FUNC8(lcd, FUNC4(1), 0x0301);
	ret |= FUNC8(lcd, FUNC4(2), 0x1f0f);
	ret |= FUNC8(lcd, FUNC4(3), 0x1f0f);
	ret |= FUNC8(lcd, FUNC4(4), 0x0707);
	ret |= FUNC8(lcd, FUNC4(5), 0x0307);
	ret |= FUNC8(lcd, FUNC4(6), 0x0707);
	ret |= FUNC8(lcd, FUNC4(7), 0x0000);
	ret |= FUNC8(lcd, FUNC4(8), 0x0004);
	ret |= FUNC8(lcd, FUNC4(9), 0x0000);
	if (ret)
		goto err_settings;

	/* Wait more than 2 frames */
	FUNC9(20);

	/* Display On Sequence */
	ret = FUNC8(lcd, LTV_PWRCTL1,
				 LTV_VCOM_DISABLE | LTV_VCOMOUT_ENABLE
				 | LTV_POWER_ON | FUNC1(5)
				 | FUNC7(5));
	ret |= FUNC8(lcd, LTV_GATECTL2,
				  LTV_NW_INV_1LINE | LTV_DSC | FUNC3(3));
	if (ret)
		goto err_disp_on;

	/* Display should now be ON. Phew. */
	return 0;

err_disp_on:
	/*
	 * Try to recover. Error handling probably isn't very useful
	 * at this point, just make a best effort to switch the panel
	 * off.
	 */
	FUNC8(lcd, LTV_PWRCTL1,
			   LTV_VCOM_DISABLE | FUNC1(5)
			   | FUNC7(5));
	FUNC8(lcd, LTV_GATECTL2,
			   LTV_NW_INV_1LINE | FUNC3(3));
err_settings:
err_power2:
err_power1:
	FUNC8(lcd, LTV_PWRCTL2, 0x0000);
	FUNC9(1);
err:
	FUNC8(lcd, LTV_PWRCTL1, LTV_VCOM_DISABLE);
	return -EIO;
}