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
typedef  int u16 ;
struct echoaudio {int input_clock; int /*<<< orphan*/  digital_mode; int /*<<< orphan*/  sample_rate; TYPE_1__* comm_page; } ;
struct TYPE_2__ {int /*<<< orphan*/  status_clocks; int /*<<< orphan*/  control_register; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DIGITAL_MODE_ADAT ; 
 int E3G_ADAT_CLOCK ; 
 int E3G_CLOCK_CLEAR_MASK ; 
 int E3G_CLOCK_DETECT_BIT_SPDIF96 ; 
 int E3G_CLOCK_DETECT_BIT_WORD96 ; 
 int E3G_DOUBLE_SPEED_MODE ; 
 int E3G_SPDIF_CLOCK ; 
 int E3G_WORD_CLOCK ; 
 int EAGAIN ; 
#define  ECHO_CLOCK_ADAT 131 
#define  ECHO_CLOCK_INTERNAL 130 
#define  ECHO_CLOCK_SPDIF 129 
#define  ECHO_CLOCK_WORD 128 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct echoaudio*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct echoaudio*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct echoaudio *chip, u16 clock)
{
	u32 control_reg, clocks_from_dsp;

	FUNC0(("set_input_clock:\n"));

	/* Mask off the clock select bits */
	control_reg = FUNC2(chip->comm_page->control_register) &
		E3G_CLOCK_CLEAR_MASK;
	clocks_from_dsp = FUNC2(chip->comm_page->status_clocks);

	switch (clock) {
	case ECHO_CLOCK_INTERNAL:
		FUNC0(("Set Echo3G clock to INTERNAL\n"));
		chip->input_clock = ECHO_CLOCK_INTERNAL;
		return FUNC3(chip, chip->sample_rate);
	case ECHO_CLOCK_SPDIF:
		if (chip->digital_mode == DIGITAL_MODE_ADAT)
			return -EAGAIN;
		FUNC0(("Set Echo3G clock to SPDIF\n"));
		control_reg |= E3G_SPDIF_CLOCK;
		if (clocks_from_dsp & E3G_CLOCK_DETECT_BIT_SPDIF96)
			control_reg |= E3G_DOUBLE_SPEED_MODE;
		else
			control_reg &= ~E3G_DOUBLE_SPEED_MODE;
		break;
	case ECHO_CLOCK_ADAT:
		if (chip->digital_mode != DIGITAL_MODE_ADAT)
			return -EAGAIN;
		FUNC0(("Set Echo3G clock to ADAT\n"));
		control_reg |= E3G_ADAT_CLOCK;
		control_reg &= ~E3G_DOUBLE_SPEED_MODE;
		break;
	case ECHO_CLOCK_WORD:
		FUNC0(("Set Echo3G clock to WORD\n"));
		control_reg |= E3G_WORD_CLOCK;
		if (clocks_from_dsp & E3G_CLOCK_DETECT_BIT_WORD96)
			control_reg |= E3G_DOUBLE_SPEED_MODE;
		else
			control_reg &= ~E3G_DOUBLE_SPEED_MODE;
		break;
	default:
		FUNC0(("Input clock 0x%x not supported for Echo3G\n", clock));
		return -EINVAL;
	}

	chip->input_clock = clock;
	return FUNC4(chip, control_reg, FUNC1(chip), 1);
}