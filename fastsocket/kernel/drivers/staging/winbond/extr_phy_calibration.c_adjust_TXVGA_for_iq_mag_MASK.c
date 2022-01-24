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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct hw_data {int txvga_setting_for_cal; } ;
typedef  int s32 ;

/* Variables and functions */
 int MASK_CALIB_START ; 
 int MASK_IQCAL_MODE ; 
 int MASK_IQCAL_TONE_SEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  REG_CALIB_READ1 ; 
 int /*<<< orphan*/  REG_MODE_CTRL ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct hw_data*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct hw_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct hw_data*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

unsigned char FUNC8(struct hw_data *phw_data)
{
	int init_txvga = 0;
	u32     reg_mode_ctrl;
	u32     val;
	s32     iqcal_tone_i0;
	s32     iqcal_tone_q0;
	u32     sqsum;
	s32     iq_mag_0_tx;
	u8		reg_state;
	int		current_txvga;


	reg_state = 0;
	for( init_txvga=0; init_txvga<10; init_txvga++)
	{
		current_txvga = ( 0x24C40A|(init_txvga<<6) );
		FUNC6(phw_data, 5, ((5<<24)|current_txvga) );
		phw_data->txvga_setting_for_cal = current_txvga;

		FUNC5(30); // 20060612.1.a

		if( !FUNC3(phw_data, REG_MODE_CTRL, &reg_mode_ctrl) ) // 20060718.1 modify
			return false;

		FUNC0(("[CAL]    MODE_CTRL (read) = 0x%08X\n", reg_mode_ctrl));

		// a. Set iqcal_mode[1:0] to 0x2 and set "calib_start" to 0x1 to
		//    enable "IQ alibration Mode II"
		reg_mode_ctrl &= ~(MASK_IQCAL_TONE_SEL|MASK_IQCAL_MODE);
		reg_mode_ctrl &= ~MASK_IQCAL_MODE;
		reg_mode_ctrl |= (MASK_CALIB_START|0x02);
		reg_mode_ctrl |= (MASK_CALIB_START|0x02|2<<2);
		FUNC4(phw_data, REG_MODE_CTRL, reg_mode_ctrl);
		FUNC0(("[CAL]    MODE_CTRL (write) = 0x%08X\n", reg_mode_ctrl));

		FUNC7(1); // 20060612.1.a

		FUNC7(300); // 20060612.1.a

		// b.
		FUNC3(phw_data, REG_CALIB_READ1, &val);

		FUNC0(("[CAL]    CALIB_READ1 = 0x%08X\n", val));
		FUNC7(300); // 20060612.1.a

		iqcal_tone_i0 = FUNC1(val & 0x00001FFF);
		iqcal_tone_q0 = FUNC1((val & 0x03FFE000) >> 13);
		FUNC0(("[CAL]    ** iqcal_tone_i0=%d, iqcal_tone_q0=%d\n",
				   iqcal_tone_i0, iqcal_tone_q0));

		sqsum = iqcal_tone_i0*iqcal_tone_i0 + iqcal_tone_q0*iqcal_tone_q0;
		iq_mag_0_tx = (s32) FUNC2(sqsum);
		FUNC0(("[CAL]    ** auto_adjust_txvga_for_iq_mag_0_tx=%d\n", iq_mag_0_tx));

		if( iq_mag_0_tx>=700 && iq_mag_0_tx<=1750 )
			break;
		else if(iq_mag_0_tx > 1750)
		{
			init_txvga=-2;
			continue;
		}
		else
			continue;

	}

	if( iq_mag_0_tx>=700 && iq_mag_0_tx<=1750 )
		return true;
	else
		return false;
}