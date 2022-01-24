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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct firmware {int dummy; } ;
struct echoaudio {int sample_rate; int digital_mode; int /*<<< orphan*/  lock; TYPE_1__* comm_page; int /*<<< orphan*/  input_clock; } ;
struct TYPE_2__ {int /*<<< orphan*/  control_register; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  DIGITAL_MODE_ADAT 130 
#define  DIGITAL_MODE_SPDIF_OPTICAL 129 
#define  DIGITAL_MODE_SPDIF_RCA 128 
 int /*<<< orphan*/  ECHO_CLOCK_ADAT ; 
 int /*<<< orphan*/  ECHO_CLOCK_INTERNAL ; 
 int /*<<< orphan*/  ECHO_CLOCK_SPDIF ; 
 int EINVAL ; 
 int EIO ; 
 int FALSE ; 
 size_t FW_LAYLA24_2A_ASIC ; 
 size_t FW_LAYLA24_2S_ASIC ; 
 int /*<<< orphan*/  GML_ADAT_MODE ; 
 int /*<<< orphan*/  GML_DIGITAL_MODE_CLEAR_MASK ; 
 int /*<<< orphan*/  GML_DOUBLE_SPEED_MODE ; 
 int /*<<< orphan*/  GML_SPDIF_OPTICAL_MODE ; 
 int TRUE ; 
 struct firmware* card_fw ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct echoaudio*,struct firmware const*) ; 
 int FUNC6 (struct echoaudio*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct echoaudio *chip, u8 mode)
{
	u32 control_reg;
	int err, incompatible_clock;
	const struct firmware *asic;

	/* Set clock to "internal" if it's not compatible with the new mode */
	incompatible_clock = FALSE;
	switch (mode) {
	case DIGITAL_MODE_SPDIF_OPTICAL:
	case DIGITAL_MODE_SPDIF_RCA:
		if (chip->input_clock == ECHO_CLOCK_ADAT)
			incompatible_clock = TRUE;
		asic = &card_fw[FW_LAYLA24_2S_ASIC];
		break;
	case DIGITAL_MODE_ADAT:
		if (chip->input_clock == ECHO_CLOCK_SPDIF)
			incompatible_clock = TRUE;
		asic = &card_fw[FW_LAYLA24_2A_ASIC];
		break;
	default:
		FUNC0(("Digital mode not supported: %d\n", mode));
		return -EINVAL;
	}

	if (incompatible_clock) {	/* Switch to 48KHz, internal */
		chip->sample_rate = 48000;
		FUNC3(&chip->lock);
		FUNC2(chip, ECHO_CLOCK_INTERNAL);
		FUNC4(&chip->lock);
	}

	/* switch_asic() can sleep */
	if (FUNC5(chip, asic) < 0)
		return -EIO;

	FUNC3(&chip->lock);

	/* Tweak the control register */
	control_reg = FUNC1(chip->comm_page->control_register);
	control_reg &= GML_DIGITAL_MODE_CLEAR_MASK;

	switch (mode) {
	case DIGITAL_MODE_SPDIF_OPTICAL:
		control_reg |= GML_SPDIF_OPTICAL_MODE;
		break;
	case DIGITAL_MODE_SPDIF_RCA:
		/* GML_SPDIF_OPTICAL_MODE bit cleared */
		break;
	case DIGITAL_MODE_ADAT:
		control_reg |= GML_ADAT_MODE;
		control_reg &= ~GML_DOUBLE_SPEED_MODE;
		break;
	}

	err = FUNC6(chip, control_reg, TRUE);
	FUNC4(&chip->lock);
	if (err < 0)
		return err;
	chip->digital_mode = mode;

	FUNC0(("set_digital_mode to %d\n", mode));
	return incompatible_clock;
}