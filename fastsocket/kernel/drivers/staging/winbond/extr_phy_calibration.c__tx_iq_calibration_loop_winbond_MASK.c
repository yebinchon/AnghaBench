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
typedef  scalar_t__ u16 ;
struct hw_data {int iq_rsdl_gain_tx_d2; int iq_rsdl_phase_tx_d2; int revision; } ;
typedef  int s32 ;

/* Variables and functions */
 scalar_t__ LOOP_TIMES ; 
 int MASK_CALIB_START ; 
 int MASK_IQCAL_MODE ; 
 int MASK_IQCAL_TONE_SEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int REG_CALIB_READ1 ; 
 int REG_MODE_CTRL ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,int*,int*) ; 
 scalar_t__ FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct hw_data*,int,int*) ; 
 int /*<<< orphan*/  FUNC13 (struct hw_data*,int,int) ; 

u8 FUNC14(struct hw_data *phw_data,
						   s32 a_2_threshold,
						   s32 b_2_threshold)
{
	u32     reg_mode_ctrl;
	s32     iq_mag_0_tx;
	s32     iqcal_tone_i0;
	s32     iqcal_tone_q0;
	s32     iqcal_tone_i;
	s32     iqcal_tone_q;
	u32     sqsum;
	s32     rot_i_b;
	s32     rot_q_b;
	s32     tx_cal_flt_b[4];
	s32     tx_cal[4];
	s32     tx_cal_reg[4];
	s32     a_2, b_2;
	s32     sin_b, sin_2b;
	s32     cos_b, cos_2b;
	s32     divisor;
	s32     temp1, temp2;
	u32     val;
	u16     loop;
	s32     iqcal_tone_i_avg,iqcal_tone_q_avg;
	u8      verify_count;
	int capture_time;

	FUNC0(("[CAL] -> _tx_iq_calibration_loop()\n"));
	FUNC0(("[CAL]    ** a_2_threshold = %d\n", a_2_threshold));
	FUNC0(("[CAL]    ** b_2_threshold = %d\n", b_2_threshold));

	verify_count = 0;

	FUNC12(phw_data, REG_MODE_CTRL, &reg_mode_ctrl);
	FUNC0(("[CAL]    MODE_CTRL (read) = 0x%08X\n", reg_mode_ctrl));

	loop = LOOP_TIMES;

	while (loop > 0)
	{
		FUNC0(("[CAL] [%d.] <_tx_iq_calibration_loop>\n", (LOOP_TIMES-loop+1)));

		iqcal_tone_i_avg=0;
		iqcal_tone_q_avg=0;
		if( !FUNC13(phw_data, 0x3C, 0x00) ) // 20060718.1 modify
			return 0;
		for(capture_time=0;capture_time<10;capture_time++)
		{
			// a. Set iqcal_mode[1:0] to 0x2 and set "calib_start" to 0x1 to
			//    enable "IQ alibration Mode II"
			reg_mode_ctrl &= ~(MASK_IQCAL_TONE_SEL|MASK_IQCAL_MODE);
			reg_mode_ctrl &= ~MASK_IQCAL_MODE;
			reg_mode_ctrl |= (MASK_CALIB_START|0x02);
			reg_mode_ctrl |= (MASK_CALIB_START|0x02|2<<2);
			FUNC13(phw_data, REG_MODE_CTRL, reg_mode_ctrl);
			FUNC0(("[CAL]    MODE_CTRL (write) = 0x%08X\n", reg_mode_ctrl));

			// b.
			FUNC12(phw_data, REG_CALIB_READ1, &val);
			FUNC0(("[CAL]    CALIB_READ1 = 0x%08X\n", val));

			iqcal_tone_i0 = FUNC2(val & 0x00001FFF);
			iqcal_tone_q0 = FUNC2((val & 0x03FFE000) >> 13);
			FUNC0(("[CAL]    ** iqcal_tone_i0=%d, iqcal_tone_q0=%d\n",
				   iqcal_tone_i0, iqcal_tone_q0));

			sqsum = iqcal_tone_i0*iqcal_tone_i0 +
			iqcal_tone_q0*iqcal_tone_q0;
			iq_mag_0_tx = (s32) FUNC10(sqsum);
			FUNC0(("[CAL]    ** iq_mag_0_tx=%d\n", iq_mag_0_tx));

			// c. Set "calib_start" to 0x0
			reg_mode_ctrl &= ~MASK_CALIB_START;
			FUNC13(phw_data, REG_MODE_CTRL, reg_mode_ctrl);
			FUNC0(("[CAL]    MODE_CTRL (write) = 0x%08X\n", reg_mode_ctrl));

			// d. Set iqcal_mode[1:0] to 0x3 and set "calib_start" to 0x1 to
			//    enable "IQ alibration Mode II"
			//hw_get_dxx_reg(phw_data, REG_MODE_CTRL, &val);
			FUNC12(phw_data, REG_MODE_CTRL, &reg_mode_ctrl);
			reg_mode_ctrl &= ~MASK_IQCAL_MODE;
			reg_mode_ctrl |= (MASK_CALIB_START|0x03);
			FUNC13(phw_data, REG_MODE_CTRL, reg_mode_ctrl);
			FUNC0(("[CAL]    MODE_CTRL (write) = 0x%08X\n", reg_mode_ctrl));

			// e.
			FUNC12(phw_data, REG_CALIB_READ1, &val);
			FUNC0(("[CAL]    CALIB_READ1 = 0x%08X\n", val));

			iqcal_tone_i = FUNC2(val & 0x00001FFF);
			iqcal_tone_q = FUNC2((val & 0x03FFE000) >> 13);
			FUNC0(("[CAL]    ** iqcal_tone_i = %d, iqcal_tone_q = %d\n",
			iqcal_tone_i, iqcal_tone_q));
			if( capture_time == 0)
			{
				continue;
			}
			else
			{
				iqcal_tone_i_avg=( iqcal_tone_i_avg*(capture_time-1) +iqcal_tone_i)/capture_time;
				iqcal_tone_q_avg=( iqcal_tone_q_avg*(capture_time-1) +iqcal_tone_q)/capture_time;
			}
		}

		iqcal_tone_i = iqcal_tone_i_avg;
		iqcal_tone_q = iqcal_tone_q_avg;


		rot_i_b = (iqcal_tone_i * iqcal_tone_i0 +
				   iqcal_tone_q * iqcal_tone_q0) / 1024;
		rot_q_b = (iqcal_tone_i * iqcal_tone_q0 * (-1) +
				   iqcal_tone_q * iqcal_tone_i0) / 1024;
		FUNC0(("[CAL]    ** rot_i_b = %d, rot_q_b = %d\n",
				   rot_i_b, rot_q_b));

		// f.
		divisor = ((iq_mag_0_tx * iq_mag_0_tx * 2)/1024 - rot_i_b) * 2;

		if (divisor == 0)
		{
			FUNC0(("[CAL] ** <_tx_iq_calibration_loop> ERROR *******\n"));
			FUNC0(("[CAL] ** divisor=0 to calculate EPS and THETA !!\n"));
			FUNC0(("[CAL] ******************************************\n"));
			break;
		}

		a_2 = (rot_i_b * 32768) / divisor;
		b_2 = (rot_q_b * (-32768)) / divisor;
		FUNC0(("[CAL]    ***** EPSILON/2 = %d\n", a_2));
		FUNC0(("[CAL]    ***** THETA/2   = %d\n", b_2));

		phw_data->iq_rsdl_gain_tx_d2 = a_2;
		phw_data->iq_rsdl_phase_tx_d2 = b_2;

		//if ((abs(a_2) < 150) && (abs(b_2) < 100))
		//if ((abs(a_2) < 200) && (abs(b_2) < 200))
		if ((FUNC11(a_2) < a_2_threshold) && (FUNC11(b_2) < b_2_threshold))
		{
			verify_count++;

			FUNC0(("[CAL] ** <_tx_iq_calibration_loop> *************\n"));
			FUNC0(("[CAL] ** VERIFY OK # %d !!\n", verify_count));
			FUNC0(("[CAL] ******************************************\n"));

			if (verify_count > 2)
			{
				FUNC0(("[CAL] ** <_tx_iq_calibration_loop> *********\n"));
				FUNC0(("[CAL] ** TX_IQ_CALIBRATION (EPS,THETA) OK !!\n"));
				FUNC0(("[CAL] **************************************\n"));
				return 0;
			}

			continue;
		}
		else
		{
			verify_count = 0;
		}

		FUNC9(b_2, &sin_b, &cos_b);
		FUNC9(b_2*2, &sin_2b, &cos_2b);
		FUNC0(("[CAL]    ** sin(b/2)=%d, cos(b/2)=%d\n", sin_b, cos_b));
		FUNC0(("[CAL]    ** sin(b)=%d, cos(b)=%d\n", sin_2b, cos_2b));

		if (cos_2b == 0)
		{
			FUNC0(("[CAL] ** <_tx_iq_calibration_loop> ERROR *******\n"));
			FUNC0(("[CAL] ** cos(b)=0 !!\n"));
			FUNC0(("[CAL] ******************************************\n"));
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

		tx_cal_flt_b[0] = FUNC1(temp1/(32768+a_2));
		tx_cal_flt_b[1] = FUNC1(temp2/(32768+a_2));
		tx_cal_flt_b[2] = FUNC1(temp2/(32768-a_2));
		tx_cal_flt_b[3] = FUNC1(temp1/(32768-a_2));
		FUNC0(("[CAL]    ** tx_cal_flt_b[0] = %d\n", tx_cal_flt_b[0]));
		FUNC0(("[CAL]       tx_cal_flt_b[1] = %d\n", tx_cal_flt_b[1]));
		FUNC0(("[CAL]       tx_cal_flt_b[2] = %d\n", tx_cal_flt_b[2]));
		FUNC0(("[CAL]       tx_cal_flt_b[3] = %d\n", tx_cal_flt_b[3]));

		tx_cal[2] = tx_cal_flt_b[2];
		tx_cal[2] = tx_cal[2] +3;
		tx_cal[1] = tx_cal[2];
		tx_cal[3] = tx_cal_flt_b[3] - 128;
		tx_cal[0] = -tx_cal[3]+1;

		FUNC0(("[CAL]       tx_cal[0] = %d\n", tx_cal[0]));
		FUNC0(("[CAL]       tx_cal[1] = %d\n", tx_cal[1]));
		FUNC0(("[CAL]       tx_cal[2] = %d\n", tx_cal[2]));
		FUNC0(("[CAL]       tx_cal[3] = %d\n", tx_cal[3]));

		//if ((tx_cal[0] == 0) && (tx_cal[1] == 0) &&
		//    (tx_cal[2] == 0) && (tx_cal[3] == 0))
		//{
		//    PHY_DEBUG(("[CAL] ** <_tx_iq_calibration_loop> *************\n"));
		//    PHY_DEBUG(("[CAL] ** TX_IQ_CALIBRATION COMPLETE !!\n"));
		//    PHY_DEBUG(("[CAL] ******************************************\n"));
		//    return 0;
		//}

		// g.
		if (phw_data->revision == 0x2002) // 1st-cut
		{
			FUNC12(phw_data, 0x54, &val);
			FUNC0(("[CAL]    ** 0x54 = 0x%08X\n", val));
			tx_cal_reg[0] = FUNC6((val & 0xF0000000) >> 28);
			tx_cal_reg[1] = FUNC6((val & 0x0F000000) >> 24);
			tx_cal_reg[2] = FUNC6((val & 0x00F00000) >> 20);
			tx_cal_reg[3] = FUNC6((val & 0x000F0000) >> 16);
		}
		else // 2nd-cut
		{
			FUNC12(phw_data, 0x3C, &val);
			FUNC0(("[CAL]    ** 0x3C = 0x%08X\n", val));
			tx_cal_reg[0] = FUNC7((val & 0xF8000000) >> 27);
			tx_cal_reg[1] = FUNC8((val & 0x07E00000) >> 21);
			tx_cal_reg[2] = FUNC8((val & 0x001F8000) >> 15);
			tx_cal_reg[3] = FUNC7((val & 0x00007C00) >> 10);

		}

		FUNC0(("[CAL]    ** tx_cal_reg[0] = %d\n", tx_cal_reg[0]));
		FUNC0(("[CAL]       tx_cal_reg[1] = %d\n", tx_cal_reg[1]));
		FUNC0(("[CAL]       tx_cal_reg[2] = %d\n", tx_cal_reg[2]));
		FUNC0(("[CAL]       tx_cal_reg[3] = %d\n", tx_cal_reg[3]));

		if (phw_data->revision == 0x2002) // 1st-cut
		{
			if (((tx_cal_reg[0]==7) || (tx_cal_reg[0]==(-8))) &&
				((tx_cal_reg[3]==7) || (tx_cal_reg[3]==(-8))))
			{
				FUNC0(("[CAL] ** <_tx_iq_calibration_loop> *********\n"));
				FUNC0(("[CAL] ** TX_IQ_CALIBRATION SATUATION !!\n"));
				FUNC0(("[CAL] **************************************\n"));
				break;
			}
		}
		else // 2nd-cut
		{
			if (((tx_cal_reg[0]==31) || (tx_cal_reg[0]==(-32))) &&
				((tx_cal_reg[3]==31) || (tx_cal_reg[3]==(-32))))
			{
				FUNC0(("[CAL] ** <_tx_iq_calibration_loop> *********\n"));
				FUNC0(("[CAL] ** TX_IQ_CALIBRATION SATUATION !!\n"));
				FUNC0(("[CAL] **************************************\n"));
				break;
			}
		}

		tx_cal[0] = tx_cal[0] + tx_cal_reg[0];
		tx_cal[1] = tx_cal[1] + tx_cal_reg[1];
		tx_cal[2] = tx_cal[2] + tx_cal_reg[2];
		tx_cal[3] = tx_cal[3] + tx_cal_reg[3];
		FUNC0(("[CAL]    ** apply tx_cal[0] = %d\n", tx_cal[0]));
		FUNC0(("[CAL]       apply tx_cal[1] = %d\n", tx_cal[1]));
		FUNC0(("[CAL]       apply tx_cal[2] = %d\n", tx_cal[2]));
		FUNC0(("[CAL]       apply tx_cal[3] = %d\n", tx_cal[3]));

		if (phw_data->revision == 0x2002) // 1st-cut
		{
			val &= 0x0000FFFF;
			val |= ((FUNC3(tx_cal[0]) << 28)|
					(FUNC3(tx_cal[1]) << 24)|
					(FUNC3(tx_cal[2]) << 20)|
					(FUNC3(tx_cal[3]) << 16));
			FUNC13(phw_data, 0x54, val);
			FUNC0(("[CAL]    ** CALIB_DATA = 0x%08X\n", val));
			return 0;
		}
		else // 2nd-cut
		{
			val &= 0x000003FF;
			val |= ((FUNC4(tx_cal[0]) << 27)|
					(FUNC5(tx_cal[1]) << 21)|
					(FUNC5(tx_cal[2]) << 15)|
					(FUNC4(tx_cal[3]) << 10));
			FUNC13(phw_data, 0x3C, val);
			FUNC0(("[CAL]    ** TX_IQ_CALIBRATION = 0x%08X\n", val));
			return 0;
		}

		// i. Set "calib_start" to 0x0
		reg_mode_ctrl &= ~MASK_CALIB_START;
		FUNC13(phw_data, REG_MODE_CTRL, reg_mode_ctrl);
		FUNC0(("[CAL]    MODE_CTRL (write) = 0x%08X\n", reg_mode_ctrl));

		loop--;
	}

	return 1;
}