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
typedef  int u16 ;
struct echoaudio {int device_id; int subdevice_id; int input_clock_types; void* bad_board; void* asic_loaded; int /*<<< orphan*/  clock_state; int /*<<< orphan*/  spdif_status; int /*<<< orphan*/ * dsp_code_to_load; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ECHO_CLOCK_BIT_INTERNAL ; 
 int ECHO_CLOCK_BIT_SPDIF ; 
 int ENODEV ; 
 void* FALSE ; 
 size_t FW_GINA20_DSP ; 
 int /*<<< orphan*/  GD_CLOCK_UNDEF ; 
 int /*<<< orphan*/  GD_SPDIF_STATUS_UNDEF ; 
 int GINA20 ; 
 void* TRUE ; 
 int /*<<< orphan*/ * card_fw ; 
 int FUNC1 (struct echoaudio*) ; 
 int FUNC2 (struct echoaudio*) ; 
 int FUNC3 (struct echoaudio*) ; 
 int FUNC4 (struct echoaudio*,void*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct echoaudio *chip, u16 device_id, u16 subdevice_id)
{
	int err;

	FUNC0(("init_hw() - Gina20\n"));
	if (FUNC5((subdevice_id & 0xfff0) != GINA20))
		return -ENODEV;

	if ((err = FUNC1(chip))) {
		FUNC0(("init_hw - could not initialize DSP comm page\n"));
		return err;
	}

	chip->device_id = device_id;
	chip->subdevice_id = subdevice_id;
	chip->bad_board = TRUE;
	chip->dsp_code_to_load = &card_fw[FW_GINA20_DSP];
	chip->spdif_status = GD_SPDIF_STATUS_UNDEF;
	chip->clock_state = GD_CLOCK_UNDEF;
	/* Since this card has no ASIC, mark it as loaded so everything
	   works OK */
	chip->asic_loaded = TRUE;
	chip->input_clock_types = ECHO_CLOCK_BIT_INTERNAL |
		ECHO_CLOCK_BIT_SPDIF;

	if ((err = FUNC3(chip)) < 0)
		return err;
	chip->bad_board = FALSE;

	if ((err = FUNC2(chip)) < 0)
		return err;

	err = FUNC4(chip, TRUE);

	FUNC0(("init_hw done\n"));
	return err;
}