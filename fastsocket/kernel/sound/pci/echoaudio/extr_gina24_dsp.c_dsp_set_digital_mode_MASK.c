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
struct echoaudio {int sample_rate; int digital_mode; int /*<<< orphan*/  lock; int /*<<< orphan*/  device_id; TYPE_1__* comm_page; int /*<<< orphan*/  input_clock; } ;
struct TYPE_2__ {int /*<<< orphan*/  control_register; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_ID_56301 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  DIGITAL_MODE_ADAT 131 
#define  DIGITAL_MODE_SPDIF_CDROM 130 
#define  DIGITAL_MODE_SPDIF_OPTICAL 129 
#define  DIGITAL_MODE_SPDIF_RCA 128 
 int /*<<< orphan*/  ECHO_CLOCK_ADAT ; 
 int /*<<< orphan*/  ECHO_CLOCK_INTERNAL ; 
 int /*<<< orphan*/  ECHO_CLOCK_SPDIF ; 
 int EINVAL ; 
 int FALSE ; 
 int /*<<< orphan*/  GML_ADAT_MODE ; 
 int /*<<< orphan*/  GML_DIGITAL_MODE_CLEAR_MASK ; 
 int /*<<< orphan*/  GML_DOUBLE_SPEED_MODE ; 
 int /*<<< orphan*/  GML_SPDIF_CDROM_MODE ; 
 int /*<<< orphan*/  GML_SPDIF_OPTICAL_MODE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct echoaudio*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct echoaudio *chip, u8 mode)
{
	u32 control_reg;
	int err, incompatible_clock;

	/* Set clock to "internal" if it's not compatible with the new mode */
	incompatible_clock = FALSE;
	switch (mode) {
	case DIGITAL_MODE_SPDIF_OPTICAL:
	case DIGITAL_MODE_SPDIF_CDROM:
	case DIGITAL_MODE_SPDIF_RCA:
		if (chip->input_clock == ECHO_CLOCK_ADAT)
			incompatible_clock = TRUE;
		break;
	case DIGITAL_MODE_ADAT:
		if (chip->input_clock == ECHO_CLOCK_SPDIF)
			incompatible_clock = TRUE;
		break;
	default:
		FUNC0(("Digital mode not supported: %d\n", mode));
		return -EINVAL;
	}

	FUNC3(&chip->lock);

	if (incompatible_clock) {	/* Switch to 48KHz, internal */
		chip->sample_rate = 48000;
		FUNC2(chip, ECHO_CLOCK_INTERNAL);
	}

	/* Clear the current digital mode */
	control_reg = FUNC1(chip->comm_page->control_register);
	control_reg &= GML_DIGITAL_MODE_CLEAR_MASK;

	/* Tweak the control reg */
	switch (mode) {
	case DIGITAL_MODE_SPDIF_OPTICAL:
		control_reg |= GML_SPDIF_OPTICAL_MODE;
		break;
	case DIGITAL_MODE_SPDIF_CDROM:
		/* '361 Gina24 cards do not have the S/PDIF CD-ROM mode */
		if (chip->device_id == DEVICE_ID_56301)
			control_reg |= GML_SPDIF_CDROM_MODE;
		break;
	case DIGITAL_MODE_SPDIF_RCA:
		/* GML_SPDIF_OPTICAL_MODE bit cleared */
		break;
	case DIGITAL_MODE_ADAT:
		control_reg |= GML_ADAT_MODE;
		control_reg &= ~GML_DOUBLE_SPEED_MODE;
		break;
	}

	err = FUNC5(chip, control_reg, TRUE);
	FUNC4(&chip->lock);
	if (err < 0)
		return err;
	chip->digital_mode = mode;

	FUNC0(("set_digital_mode to %d\n", chip->digital_mode));
	return incompatible_clock;
}