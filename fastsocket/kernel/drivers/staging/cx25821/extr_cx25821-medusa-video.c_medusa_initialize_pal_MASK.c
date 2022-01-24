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
struct cx25821_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/ * i2c_bus; } ;

/* Variables and functions */
 scalar_t__ BYP_AB_CTRL ; 
 scalar_t__ DENC_A_REG_1 ; 
 scalar_t__ DENC_A_REG_2 ; 
 scalar_t__ DENC_A_REG_3 ; 
 scalar_t__ DENC_A_REG_4 ; 
 scalar_t__ DENC_A_REG_5 ; 
 scalar_t__ DENC_A_REG_6 ; 
 scalar_t__ DENC_A_REG_7 ; 
 scalar_t__ DFE_CTRL1 ; 
 scalar_t__ HORIZ_TIM_CTRL ; 
 scalar_t__ HSCALE_CTRL ; 
 int MAX_DECODERS ; 
 int MAX_ENCODERS ; 
 scalar_t__ MISC_TIM_CTRL ; 
 scalar_t__ MODE_CTRL ; 
 scalar_t__ OUT_CTRL1 ; 
 scalar_t__ OUT_CTRL_NS ; 
 scalar_t__ SC_STEP_SIZE ; 
 scalar_t__ VERT_TIM_CTRL ; 
 scalar_t__ VSCALE_CTRL ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__,int*) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cx25821_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cx25821_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct cx25821_dev *dev)
{
	int ret_val = 0;
	int i = 0;
	u32 value = 0;
	u32 tmp = 0;

	FUNC5(&dev->lock);

	for (i = 0; i < MAX_DECODERS; i++) {
		// set video format PAL-BDGHI
		value =
		    FUNC1(&dev->i2c_bus[0], MODE_CTRL + (0x200 * i),
				     &tmp);
		value &= 0xFFFFFFF0;
		value |= 0x10004;	// enable the fast locking mode bit[16]
		ret_val =
		    FUNC2(&dev->i2c_bus[0], MODE_CTRL + (0x200 * i),
				      value);

		// resolution PAL 720x576
		value =
		    FUNC1(&dev->i2c_bus[0],
				     HORIZ_TIM_CTRL + (0x200 * i), &tmp);
		value &= 0x00C00C00;
		value |= 0x632D007D;
		ret_val =
		    FUNC2(&dev->i2c_bus[0],
				      HORIZ_TIM_CTRL + (0x200 * i), value);

		// vblank656_cnt=x26, vactive_cnt=240h, vblank_cnt=x24
		value =
		    FUNC1(&dev->i2c_bus[0],
				     VERT_TIM_CTRL + (0x200 * i), &tmp);
		value &= 0x00C00C00;
		value |= 0x28240026;	// vblank_cnt + 2 to get camera ID
		ret_val =
		    FUNC2(&dev->i2c_bus[0],
				      VERT_TIM_CTRL + (0x200 * i), value);

		// chroma subcarrier step size
		ret_val =
		    FUNC2(&dev->i2c_bus[0],
				      SC_STEP_SIZE + (0x200 * i), 0x5411E2D0);

		// enable VIP optional active
		value =
		    FUNC1(&dev->i2c_bus[0],
				     OUT_CTRL_NS + (0x200 * i), &tmp);
		value &= 0xFFFBFFFF;
		value |= 0x00040000;
		ret_val =
		    FUNC2(&dev->i2c_bus[0],
				      OUT_CTRL_NS + (0x200 * i), value);

		// enable VIP optional active (VIP_OPT_AL) for direct output.
		value =
		    FUNC1(&dev->i2c_bus[0], OUT_CTRL1 + (0x200 * i),
				     &tmp);
		value &= 0xFFFBFFFF;
		value |= 0x00040000;
		ret_val =
		    FUNC2(&dev->i2c_bus[0], OUT_CTRL1 + (0x200 * i),
				      value);

		// clear VPRES_VERT_EN bit, fixes the chroma run away problem
		// when the input switching rate < 16 fields
		value =
		    FUNC1(&dev->i2c_bus[0],
				     MISC_TIM_CTRL + (0x200 * i), &tmp);
		value = FUNC7(value, 14);	// disable special play detection
		value = FUNC0(value, 15);
		ret_val =
		    FUNC2(&dev->i2c_bus[0],
				      MISC_TIM_CTRL + (0x200 * i), value);

		// set vbi_gate_en to 0
		value =
		    FUNC1(&dev->i2c_bus[0], DFE_CTRL1 + (0x200 * i),
				     &tmp);
		value = FUNC0(value, 29);
		ret_val =
		    FUNC2(&dev->i2c_bus[0], DFE_CTRL1 + (0x200 * i),
				      value);

		FUNC3(dev, i);

		// Enable the generation of blue field output if no video
		FUNC4(dev, i, 1);
	}

	for (i = 0; i < MAX_ENCODERS; i++) {
		// PAL hclock
		value =
		    FUNC1(&dev->i2c_bus[0],
				     DENC_A_REG_1 + (0x100 * i), &tmp);
		value &= 0xF000FC00;
		value |= 0x06C002D0;
		ret_val =
		    FUNC2(&dev->i2c_bus[0],
				      DENC_A_REG_1 + (0x100 * i), value);

		// burst begin and burst end
		value =
		    FUNC1(&dev->i2c_bus[0],
				     DENC_A_REG_2 + (0x100 * i), &tmp);
		value &= 0xFF000000;
		value |= 0x007E9754;
		ret_val =
		    FUNC2(&dev->i2c_bus[0],
				      DENC_A_REG_2 + (0x100 * i), value);

		// hblank and vactive
		value =
		    FUNC1(&dev->i2c_bus[0],
				     DENC_A_REG_3 + (0x100 * i), &tmp);
		value &= 0xFC00FE00;
		value |= 0x00FC0120;
		ret_val =
		    FUNC2(&dev->i2c_bus[0],
				      DENC_A_REG_3 + (0x100 * i), value);

		// set PAL vblank, phase alternation, 0 IRE pedestal
		value =
		    FUNC1(&dev->i2c_bus[0],
				     DENC_A_REG_4 + (0x100 * i), &tmp);
		value &= 0x00FCFFFF;
		value |= 0x14010000;
		ret_val =
		    FUNC2(&dev->i2c_bus[0],
				      DENC_A_REG_4 + (0x100 * i), value);

		value =
		    FUNC1(&dev->i2c_bus[0],
				     DENC_A_REG_5 + (0x100 * i), &tmp);
		value &= 0xFFFF0000;
		value |= 0x0000F078;
		ret_val =
		    FUNC2(&dev->i2c_bus[0],
				      DENC_A_REG_5 + (0x100 * i), value);

		ret_val =
		    FUNC2(&dev->i2c_bus[0],
				      DENC_A_REG_6 + (0x100 * i), 0x00A493CF);

		// Subcarrier Increment
		ret_val =
		    FUNC2(&dev->i2c_bus[0],
				      DENC_A_REG_7 + (0x100 * i), 0x2A098ACB);
	}

	//set picture resolutions
	ret_val = FUNC2(&dev->i2c_bus[0], HSCALE_CTRL, 0x0);	//0 - 720
	ret_val = FUNC2(&dev->i2c_bus[0], VSCALE_CTRL, 0x0);	//0 - 576

	// set Bypass input format to PAL 625 lines
	value = FUNC1(&dev->i2c_bus[0], BYP_AB_CTRL, &tmp);
	value &= 0xFFF7FDFF;
	ret_val = FUNC2(&dev->i2c_bus[0], BYP_AB_CTRL, value);

	FUNC6(&dev->lock);

	return ret_val;
}