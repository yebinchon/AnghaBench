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
struct lvds_setting_information {scalar_t__ LCDDithering; scalar_t__ device_lcd_dualedge; } ;
struct lvds_chip_information {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * COMMON_INIT_TBL_VT1636 ; 
 int /*<<< orphan*/ * DITHERING_DISABLE_TBL_VT1636 ; 
 int /*<<< orphan*/ * DITHERING_ENABLE_TBL_VT1636 ; 
 int /*<<< orphan*/ * DUAL_CHANNEL_ENABLE_TBL_VT1636 ; 
 int /*<<< orphan*/ * SINGLE_CHANNEL_ENABLE_TBL_VT1636 ; 
 int /*<<< orphan*/  FUNC1 (struct lvds_setting_information*,struct lvds_chip_information*,int /*<<< orphan*/ ) ; 

void FUNC2(struct lvds_setting_information
	*plvds_setting_info, struct lvds_chip_information *plvds_chip_info)
{
	int reg_num, i;

	/* Common settings: */
	reg_num = FUNC0(COMMON_INIT_TBL_VT1636);

	for (i = 0; i < reg_num; i++) {
		FUNC1(plvds_setting_info,
					 plvds_chip_info,
					 COMMON_INIT_TBL_VT1636[i]);
	}

	/* Input Data Mode Select */
	if (plvds_setting_info->device_lcd_dualedge) {
		FUNC1(plvds_setting_info,
					 plvds_chip_info,
					 DUAL_CHANNEL_ENABLE_TBL_VT1636[0]);
	} else {
		FUNC1(plvds_setting_info,
					 plvds_chip_info,
					 SINGLE_CHANNEL_ENABLE_TBL_VT1636[0]);
	}

	if (plvds_setting_info->LCDDithering) {
		FUNC1(plvds_setting_info,
					 plvds_chip_info,
					 DITHERING_ENABLE_TBL_VT1636[0]);
	} else {
		FUNC1(plvds_setting_info,
					 plvds_chip_info,
					 DITHERING_DISABLE_TBL_VT1636[0]);
	}
}