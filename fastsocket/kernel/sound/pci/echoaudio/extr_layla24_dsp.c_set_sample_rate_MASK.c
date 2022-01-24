#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct echoaudio {scalar_t__ digital_mode; scalar_t__ input_clock; int sample_rate; TYPE_1__* comm_page; } ;
struct TYPE_2__ {void* sample_rate; int /*<<< orphan*/  control_register; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ DIGITAL_MODE_ADAT ; 
 int /*<<< orphan*/  DSP_VC_SET_LAYLA24_FREQUENCY_REG ; 
 scalar_t__ ECHO_CLOCK_INTERNAL ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FALSE ; 
 int GML_11KHZ ; 
 int GML_16KHZ ; 
 int GML_22KHZ ; 
 int GML_32KHZ ; 
 int GML_44KHZ ; 
 int GML_48KHZ ; 
 int GML_88KHZ ; 
 int GML_8KHZ ; 
 int GML_96KHZ ; 
 int GML_CLOCK_CLEAR_MASK ; 
 int GML_DOUBLE_SPEED_MODE ; 
 int GML_SPDIF_PRO_MODE ; 
 int GML_SPDIF_RATE_CLEAR_MASK ; 
 int GML_SPDIF_SAMPLE_RATE0 ; 
 int GML_SPDIF_SAMPLE_RATE1 ; 
 int LAYLA24_CONTINUOUS_CLOCK ; 
 int LAYLA24_MAGIC_NUMBER ; 
 int /*<<< orphan*/  FUNC1 (struct echoaudio*) ; 
 void* FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct echoaudio*) ; 
 int FUNC7 (struct echoaudio*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct echoaudio *chip, u32 rate)
{
	u32 control_reg, clock, base_rate;

	if (FUNC5(rate >= 50000 &&
		       chip->digital_mode == DIGITAL_MODE_ADAT))
		return -EINVAL;

	/* Only set the clock for internal mode. */
	if (chip->input_clock != ECHO_CLOCK_INTERNAL) {
		FUNC0(("set_sample_rate: Cannot set sample rate - "
			"clock not set to CLK_CLOCKININTERNAL\n"));
		/* Save the rate anyhow */
		chip->comm_page->sample_rate = FUNC2(rate);
		chip->sample_rate = rate;
		return 0;
	}

	/* Get the control register & clear the appropriate bits */
	control_reg = FUNC3(chip->comm_page->control_register);
	control_reg &= GML_CLOCK_CLEAR_MASK & GML_SPDIF_RATE_CLEAR_MASK;

	clock = 0;

	switch (rate) {
	case 96000:
		clock = GML_96KHZ;
		break;
	case 88200:
		clock = GML_88KHZ;
		break;
	case 48000:
		clock = GML_48KHZ | GML_SPDIF_SAMPLE_RATE1;
		break;
	case 44100:
		clock = GML_44KHZ;
		/* Professional mode */
		if (control_reg & GML_SPDIF_PRO_MODE)
			clock |= GML_SPDIF_SAMPLE_RATE0;
		break;
	case 32000:
		clock = GML_32KHZ | GML_SPDIF_SAMPLE_RATE0 |
			GML_SPDIF_SAMPLE_RATE1;
		break;
	case 22050:
		clock = GML_22KHZ;
		break;
	case 16000:
		clock = GML_16KHZ;
		break;
	case 11025:
		clock = GML_11KHZ;
		break;
	case 8000:
		clock = GML_8KHZ;
		break;
	default:
		/* If this is a non-standard rate, then the driver needs to
		use Layla24's special "continuous frequency" mode */
		clock = LAYLA24_CONTINUOUS_CLOCK;
		if (rate > 50000) {
			base_rate = rate >> 1;
			control_reg |= GML_DOUBLE_SPEED_MODE;
		} else {
			base_rate = rate;
		}

		if (base_rate < 25000)
			base_rate = 25000;

		if (FUNC6(chip))
			return -EIO;

		chip->comm_page->sample_rate =
			FUNC2(LAYLA24_MAGIC_NUMBER / base_rate - 2);

		FUNC1(chip);
		FUNC4(chip, DSP_VC_SET_LAYLA24_FREQUENCY_REG);
	}

	control_reg |= clock;

	chip->comm_page->sample_rate = FUNC2(rate);	/* ignored by the DSP ? */
	chip->sample_rate = rate;
	FUNC0(("set_sample_rate: %d clock %d\n", rate, control_reg));

	return FUNC7(chip, control_reg, FALSE);
}