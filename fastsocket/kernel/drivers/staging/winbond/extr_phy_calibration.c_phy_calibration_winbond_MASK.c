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
typedef  int u32 ;
struct hw_data {int dummy; } ;

/* Variables and functions */
 int MASK_CALIB_START ; 
 int MASK_IQCAL_MODE ; 
 int MASK_IQCAL_TONE_SEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int REG_MODE_CTRL ; 
 int /*<<< orphan*/  FUNC1 (struct hw_data*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hw_data*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hw_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct hw_data*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct hw_data*,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct hw_data*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hw_data*,int,int) ; 
 int /*<<< orphan*/  mac_ctrl ; 
 int /*<<< orphan*/  FUNC8 (struct hw_data*) ; 
 int /*<<< orphan*/  rf_ctrl ; 

void FUNC9(struct hw_data *phw_data, u32 frequency)
{
	u32     reg_mode_ctrl;
	u32     iq_alpha;

	FUNC0(("[CAL] -> phy_calibration_winbond()\n"));

	// 20040701 1.1.25.1000 kevin
	FUNC4(phw_data, 0x80, &mac_ctrl);
	FUNC4(phw_data, 0xE4, &rf_ctrl);
	FUNC5(phw_data, 0x58, &iq_alpha);



	FUNC2(phw_data, frequency);
	//_txidac_dc_offset_cancellation_winbond(phw_data);
	//_txqdac_dc_offset_cacellation_winbond(phw_data);

	FUNC3(phw_data);
	FUNC1(phw_data, frequency);

	//------------------------------------------------------------------------
	FUNC5(phw_data, REG_MODE_CTRL, &reg_mode_ctrl);
	reg_mode_ctrl &= ~(MASK_IQCAL_TONE_SEL|MASK_IQCAL_MODE|MASK_CALIB_START); // set when finish
	FUNC7(phw_data, REG_MODE_CTRL, reg_mode_ctrl);
	FUNC0(("[CAL]    MODE_CTRL (write) = 0x%08X\n", reg_mode_ctrl));

	// i. Set RFIC to "Normal mode"
	FUNC6(phw_data, 0x80, mac_ctrl);
	FUNC6(phw_data, 0xE4, rf_ctrl);
	FUNC7(phw_data, 0x58, iq_alpha);


	//------------------------------------------------------------------------
	FUNC8(phw_data);

}