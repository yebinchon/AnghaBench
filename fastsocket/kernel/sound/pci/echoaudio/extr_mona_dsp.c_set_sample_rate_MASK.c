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
struct firmware {int dummy; } ;
struct echoaudio {scalar_t__ input_clock; int sample_rate; scalar_t__ digital_mode; scalar_t__ device_id; TYPE_1__* comm_page; struct firmware const* asic_code; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {void* sample_rate; int /*<<< orphan*/  control_register; } ;

/* Variables and functions */
 scalar_t__ DEVICE_ID_56361 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ DIGITAL_MODE_ADAT ; 
 int /*<<< orphan*/  DSP_FNC_LOAD_MONA_PCI_CARD_ASIC ; 
 scalar_t__ ECHO_CLOCK_INTERNAL ; 
 int EINVAL ; 
 size_t FW_MONA_301_1_ASIC48 ; 
 size_t FW_MONA_301_1_ASIC96 ; 
 size_t FW_MONA_361_1_ASIC48 ; 
 size_t FW_MONA_361_1_ASIC96 ; 
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
 int GML_SPDIF_PRO_MODE ; 
 int GML_SPDIF_RATE_CLEAR_MASK ; 
 int GML_SPDIF_SAMPLE_RATE0 ; 
 int GML_SPDIF_SAMPLE_RATE1 ; 
 struct firmware* card_fw ; 
 void* FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct echoaudio*,int /*<<< orphan*/ ,struct firmware const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct echoaudio*,int,char) ; 

__attribute__((used)) static int FUNC7(struct echoaudio *chip, u32 rate)
{
	u32 control_reg, clock;
	const struct firmware *asic;
	char force_write;

	/* Only set the clock for internal mode. */
	if (chip->input_clock != ECHO_CLOCK_INTERNAL) {
		FUNC0(("set_sample_rate: Cannot set sample rate - "
			"clock not set to CLK_CLOCKININTERNAL\n"));
		/* Save the rate anyhow */
		chip->comm_page->sample_rate = FUNC1(rate);
		chip->sample_rate = rate;
		return 0;
	}

	/* Now, check to see if the required ASIC is loaded */
	if (rate >= 88200) {
		if (chip->digital_mode == DIGITAL_MODE_ADAT)
			return -EINVAL;
		if (chip->device_id == DEVICE_ID_56361)
			asic = &card_fw[FW_MONA_361_1_ASIC96];
		else
			asic = &card_fw[FW_MONA_301_1_ASIC96];
	} else {
		if (chip->device_id == DEVICE_ID_56361)
			asic = &card_fw[FW_MONA_361_1_ASIC48];
		else
			asic = &card_fw[FW_MONA_301_1_ASIC48];
	}

	force_write = 0;
	if (asic != chip->asic_code) {
		int err;
		/* Load the desired ASIC (load_asic_generic() can sleep) */
		FUNC5(&chip->lock);
		err = FUNC3(chip, DSP_FNC_LOAD_MONA_PCI_CARD_ASIC,
					asic);
		FUNC4(&chip->lock);

		if (err < 0)
			return err;
		chip->asic_code = asic;
		force_write = 1;
	}

	/* Compute the new control register value */
	clock = 0;
	control_reg = FUNC2(chip->comm_page->control_register);
	control_reg &= GML_CLOCK_CLEAR_MASK;
	control_reg &= GML_SPDIF_RATE_CLEAR_MASK;

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
		FUNC0(("set_sample_rate: %d invalid!\n", rate));
		return -EINVAL;
	}

	control_reg |= clock;

	chip->comm_page->sample_rate = FUNC1(rate);	/* ignored by the DSP */
	chip->sample_rate = rate;
	FUNC0(("set_sample_rate: %d clock %d\n", rate, clock));

	return FUNC6(chip, control_reg, force_write);
}