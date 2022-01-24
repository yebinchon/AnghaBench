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
typedef  int u32 ;
typedef  int u16 ;
struct hw_data {int iq_rsdl_gain_tx_d2; int iq_rsdl_phase_tx_d2; int revision; } ;
typedef  int s32 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int LOOP_TIMES ; 
 int MASK_CALIB_START ; 
 int MASK_IQCAL_MODE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int REG_CALIB_READ1 ; 
 int REG_CALIB_READ2 ; 
 int REG_MODE_CTRL ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int,int*,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct hw_data*,int,int*) ; 
 int /*<<< orphan*/  FUNC12 (struct hw_data*,int,int*) ; 
 int /*<<< orphan*/  FUNC13 (struct hw_data*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct hw_data*,int,int) ; 

u8 FUNC15(struct hw_data *phw_data, u16 factor, u32 frequency)
{
	u32     reg_mode_ctrl;
	s32     iqcal_tone_i;
	s32     iqcal_tone_q;
	s32     iqcal_image_i;
	s32     iqcal_image_q;
	s32     rot_tone_i_b;
	s32     rot_tone_q_b;
	s32     rot_image_i_b;
	s32     rot_image_q_b;
	s32     rx_cal_flt_b[4];
	s32     rx_cal[4];
	s32     rx_cal_reg[4];
	s32     a_2, b_2;
	s32     sin_b, sin_2b;
	s32     cos_b, cos_2b;
	s32     temp1, temp2;
	u32     val;
	u16     loop;

	u32     pwr_tone;
	u32     pwr_image;
	u8      verify_count;

	s32     iqcal_tone_i_avg,iqcal_tone_q_avg;
	s32     iqcal_image_i_avg,iqcal_image_q_avg;
	u16		capture_time;

	FUNC1(("[CAL] -> [5]_rx_iq_calibration_loop()\n"));
	FUNC1(("[CAL] ** factor = %d\n", factor));


// RF Control Override
	FUNC11(phw_data, 0x80, &val);
	val |= FUNC0(19);
	FUNC13(phw_data, 0x80, val);

// RF_Ctrl
	FUNC11(phw_data, 0xE4, &val);
	val |= FUNC0(0);
	FUNC13(phw_data, 0xE4, val);
	FUNC1(("[CAL] ** RF_CTRL(0xE4) = 0x%08X", val));

	FUNC14(phw_data, 0x58, 0x44444444); // IQ_Alpha

	// b.

	FUNC12(phw_data, REG_MODE_CTRL, &reg_mode_ctrl);
	FUNC1(("[CAL]    MODE_CTRL (read) = 0x%08X\n", reg_mode_ctrl));

	verify_count = 0;

	//for (loop = 0; loop < 1; loop++)
	//for (loop = 0; loop < LOOP_TIMES; loop++)
	loop = LOOP_TIMES;
	while (loop > 0)
	{
		FUNC1(("[CAL] [%d.] <_rx_iq_calibration_loop>\n", (LOOP_TIMES-loop+1)));
		iqcal_tone_i_avg=0;
		iqcal_tone_q_avg=0;
		iqcal_image_i_avg=0;
		iqcal_image_q_avg=0;
		capture_time=0;

		for(capture_time=0; capture_time<10; capture_time++)
		{
		// i. Set "calib_start" to 0x0
		reg_mode_ctrl &= ~MASK_CALIB_START;
		if( !FUNC14(phw_data, REG_MODE_CTRL, reg_mode_ctrl) )//20060718.1 modify
			return 0;
		FUNC1(("[CAL]    MODE_CTRL (write) = 0x%08X\n", reg_mode_ctrl));

		reg_mode_ctrl &= ~MASK_IQCAL_MODE;
		reg_mode_ctrl |= (MASK_CALIB_START|0x1);
		FUNC14(phw_data, REG_MODE_CTRL, reg_mode_ctrl);
		FUNC1(("[CAL]    MODE_CTRL (write) = 0x%08X\n", reg_mode_ctrl));

		// c.
		FUNC12(phw_data, REG_CALIB_READ1, &val);
		FUNC1(("[CAL]    CALIB_READ1 = 0x%08X\n", val));

		iqcal_tone_i = FUNC3(val & 0x00001FFF);
		iqcal_tone_q = FUNC3((val & 0x03FFE000) >> 13);
		FUNC1(("[CAL]    ** iqcal_tone_i = %d, iqcal_tone_q = %d\n",
				   iqcal_tone_i, iqcal_tone_q));

		FUNC12(phw_data, REG_CALIB_READ2, &val);
		FUNC1(("[CAL]    CALIB_READ2 = 0x%08X\n", val));

		iqcal_image_i = FUNC3(val & 0x00001FFF);
		iqcal_image_q = FUNC3((val & 0x03FFE000) >> 13);
		FUNC1(("[CAL]    ** iqcal_image_i = %d, iqcal_image_q = %d\n",
				   iqcal_image_i, iqcal_image_q));
			if( capture_time == 0)
			{
				continue;
			}
			else
			{
				iqcal_image_i_avg=( iqcal_image_i_avg*(capture_time-1) +iqcal_image_i)/capture_time;
				iqcal_image_q_avg=( iqcal_image_q_avg*(capture_time-1) +iqcal_image_q)/capture_time;
				iqcal_tone_i_avg=( iqcal_tone_i_avg*(capture_time-1) +iqcal_tone_i)/capture_time;
				iqcal_tone_q_avg=( iqcal_tone_q_avg*(capture_time-1) +iqcal_tone_q)/capture_time;
			}
		}


		iqcal_image_i = iqcal_image_i_avg;
		iqcal_image_q = iqcal_image_q_avg;
		iqcal_tone_i = iqcal_tone_i_avg;
		iqcal_tone_q = iqcal_tone_q_avg;

		// d.
		rot_tone_i_b = (iqcal_tone_i * iqcal_tone_i +
						iqcal_tone_q * iqcal_tone_q) / 1024;
		rot_tone_q_b = (iqcal_tone_i * iqcal_tone_q * (-1) +
						iqcal_tone_q * iqcal_tone_i) / 1024;
		rot_image_i_b = (iqcal_image_i * iqcal_tone_i -
						 iqcal_image_q * iqcal_tone_q) / 1024;
		rot_image_q_b = (iqcal_image_i * iqcal_tone_q +
						 iqcal_image_q * iqcal_tone_i) / 1024;

		FUNC1(("[CAL]    ** rot_tone_i_b  = %d\n", rot_tone_i_b));
		FUNC1(("[CAL]    ** rot_tone_q_b  = %d\n", rot_tone_q_b));
		FUNC1(("[CAL]    ** rot_image_i_b = %d\n", rot_image_i_b));
		FUNC1(("[CAL]    ** rot_image_q_b = %d\n", rot_image_q_b));

		// f.
		if (rot_tone_i_b == 0)
		{
			FUNC1(("[CAL] ** <_rx_iq_calibration_loop> ERROR *******\n"));
			FUNC1(("[CAL] ** rot_tone_i_b=0 to calculate EPS and THETA !!\n"));
			FUNC1(("[CAL] ******************************************\n"));
			break;
		}

		a_2 = (rot_image_i_b * 32768) / rot_tone_i_b -
			phw_data->iq_rsdl_gain_tx_d2;
		b_2 = (rot_image_q_b * 32768) / rot_tone_i_b -
			phw_data->iq_rsdl_phase_tx_d2;

		FUNC1(("[CAL]    ** iq_rsdl_gain_tx_d2 = %d\n", phw_data->iq_rsdl_gain_tx_d2));
		FUNC1(("[CAL]    ** iq_rsdl_phase_tx_d2= %d\n", phw_data->iq_rsdl_phase_tx_d2));
		FUNC1(("[CAL]    ***** EPSILON/2 = %d\n", a_2));
		FUNC1(("[CAL]    ***** THETA/2   = %d\n", b_2));

		FUNC10(b_2, &sin_b, &cos_b);
		FUNC10(b_2*2, &sin_2b, &cos_2b);
		FUNC1(("[CAL]    ** sin(b/2)=%d, cos(b/2)=%d\n", sin_b, cos_b));
		FUNC1(("[CAL]    ** sin(b)=%d, cos(b)=%d\n", sin_2b, cos_2b));

		if (cos_2b == 0)
		{
			FUNC1(("[CAL] ** <_rx_iq_calibration_loop> ERROR *******\n"));
			FUNC1(("[CAL] ** cos(b)=0 !!\n"));
			FUNC1(("[CAL] ******************************************\n"));
			break;
		}

		// 1280 * 32768 = 41943040
		temp1 = (41943040/cos_2b)*cos_b;

		//temp2 = (41943040/cos_2b)*sin_b*(-1);
		if (phw_data->revision == 0x2002) // 1st-cut
		{
			temp2 = (41943040/cos_2b)*sin_b*(-1);
		}
		else // 2nd-cut
		{
			temp2 = (41943040*4/cos_2b)*sin_b*(-1);
		}

		rx_cal_flt_b[0] = FUNC2(temp1/(32768+a_2));
		rx_cal_flt_b[1] = FUNC2(temp2/(32768-a_2));
		rx_cal_flt_b[2] = FUNC2(temp2/(32768+a_2));
		rx_cal_flt_b[3] = FUNC2(temp1/(32768-a_2));

		FUNC1(("[CAL]    ** rx_cal_flt_b[0] = %d\n", rx_cal_flt_b[0]));
		FUNC1(("[CAL]       rx_cal_flt_b[1] = %d\n", rx_cal_flt_b[1]));
		FUNC1(("[CAL]       rx_cal_flt_b[2] = %d\n", rx_cal_flt_b[2]));
		FUNC1(("[CAL]       rx_cal_flt_b[3] = %d\n", rx_cal_flt_b[3]));

		rx_cal[0] = rx_cal_flt_b[0] - 128;
		rx_cal[1] = rx_cal_flt_b[1];
		rx_cal[2] = rx_cal_flt_b[2];
		rx_cal[3] = rx_cal_flt_b[3] - 128;
		FUNC1(("[CAL]    ** rx_cal[0] = %d\n", rx_cal[0]));
		FUNC1(("[CAL]       rx_cal[1] = %d\n", rx_cal[1]));
		FUNC1(("[CAL]       rx_cal[2] = %d\n", rx_cal[2]));
		FUNC1(("[CAL]       rx_cal[3] = %d\n", rx_cal[3]));

		// e.
		pwr_tone = (iqcal_tone_i*iqcal_tone_i + iqcal_tone_q*iqcal_tone_q);
		pwr_image = (iqcal_image_i*iqcal_image_i + iqcal_image_q*iqcal_image_q)*factor;

		FUNC1(("[CAL]    ** pwr_tone  = %d\n", pwr_tone));
		FUNC1(("[CAL]    ** pwr_image  = %d\n", pwr_image));

		if (pwr_tone > pwr_image)
		{
			verify_count++;

			FUNC1(("[CAL] ** <_rx_iq_calibration_loop> *************\n"));
			FUNC1(("[CAL] ** VERIFY OK # %d !!\n", verify_count));
			FUNC1(("[CAL] ******************************************\n"));

			if (verify_count > 2)
			{
				FUNC1(("[CAL] ** <_rx_iq_calibration_loop> *********\n"));
				FUNC1(("[CAL] ** RX_IQ_CALIBRATION OK !!\n"));
				FUNC1(("[CAL] **************************************\n"));
				return 0;
			}

			continue;
		}
		// g.
		FUNC12(phw_data, 0x54, &val);
		FUNC1(("[CAL]    ** 0x54 = 0x%08X\n", val));

		if (phw_data->revision == 0x2002) // 1st-cut
		{
			rx_cal_reg[0] = FUNC7((val & 0x0000F000) >> 12);
			rx_cal_reg[1] = FUNC7((val & 0x00000F00) >>  8);
			rx_cal_reg[2] = FUNC7((val & 0x000000F0) >>  4);
			rx_cal_reg[3] = FUNC7((val & 0x0000000F));
		}
		else // 2nd-cut
		{
			rx_cal_reg[0] = FUNC8((val & 0xF8000000) >> 27);
			rx_cal_reg[1] = FUNC9((val & 0x07E00000) >> 21);
			rx_cal_reg[2] = FUNC9((val & 0x001F8000) >> 15);
			rx_cal_reg[3] = FUNC8((val & 0x00007C00) >> 10);
		}

		FUNC1(("[CAL]    ** rx_cal_reg[0] = %d\n", rx_cal_reg[0]));
		FUNC1(("[CAL]       rx_cal_reg[1] = %d\n", rx_cal_reg[1]));
		FUNC1(("[CAL]       rx_cal_reg[2] = %d\n", rx_cal_reg[2]));
		FUNC1(("[CAL]       rx_cal_reg[3] = %d\n", rx_cal_reg[3]));

		if (phw_data->revision == 0x2002) // 1st-cut
		{
			if (((rx_cal_reg[0]==7) || (rx_cal_reg[0]==(-8))) &&
				((rx_cal_reg[3]==7) || (rx_cal_reg[3]==(-8))))
			{
				FUNC1(("[CAL] ** <_rx_iq_calibration_loop> *********\n"));
				FUNC1(("[CAL] ** RX_IQ_CALIBRATION SATUATION !!\n"));
				FUNC1(("[CAL] **************************************\n"));
				break;
			}
		}
		else // 2nd-cut
		{
			if (((rx_cal_reg[0]==31) || (rx_cal_reg[0]==(-32))) &&
				((rx_cal_reg[3]==31) || (rx_cal_reg[3]==(-32))))
			{
				FUNC1(("[CAL] ** <_rx_iq_calibration_loop> *********\n"));
				FUNC1(("[CAL] ** RX_IQ_CALIBRATION SATUATION !!\n"));
				FUNC1(("[CAL] **************************************\n"));
				break;
			}
		}

		rx_cal[0] = rx_cal[0] + rx_cal_reg[0];
		rx_cal[1] = rx_cal[1] + rx_cal_reg[1];
		rx_cal[2] = rx_cal[2] + rx_cal_reg[2];
		rx_cal[3] = rx_cal[3] + rx_cal_reg[3];
		FUNC1(("[CAL]    ** apply rx_cal[0] = %d\n", rx_cal[0]));
		FUNC1(("[CAL]       apply rx_cal[1] = %d\n", rx_cal[1]));
		FUNC1(("[CAL]       apply rx_cal[2] = %d\n", rx_cal[2]));
		FUNC1(("[CAL]       apply rx_cal[3] = %d\n", rx_cal[3]));

		FUNC12(phw_data, 0x54, &val);
		if (phw_data->revision == 0x2002) // 1st-cut
		{
			val &= 0x0000FFFF;
			val |= ((FUNC4(rx_cal[0]) << 12)|
					(FUNC4(rx_cal[1]) <<  8)|
					(FUNC4(rx_cal[2]) <<  4)|
					(FUNC4(rx_cal[3])));
			FUNC14(phw_data, 0x54, val);
		}
		else // 2nd-cut
		{
			val &= 0x000003FF;
			val |= ((FUNC5(rx_cal[0]) << 27)|
					(FUNC6(rx_cal[1]) << 21)|
					(FUNC6(rx_cal[2]) << 15)|
					(FUNC5(rx_cal[3]) << 10));
			FUNC14(phw_data, 0x54, val);

			if( loop == 3 )
			return 0;
		}
		FUNC1(("[CAL]    ** CALIB_DATA = 0x%08X\n", val));

		loop--;
	}

	return 1;
}