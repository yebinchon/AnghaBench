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
struct echoaudio {int device_id; int subdevice_id; void* bad_board; int /*<<< orphan*/  input_clock_types; void* asic_loaded; int /*<<< orphan*/ * dsp_code_to_load; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ECHO_CLOCK_BIT_INTERNAL ; 
 int ENODEV ; 
 void* FALSE ; 
 size_t FW_INDIGO_IOX_DSP ; 
 int INDIGO_IOX ; 
 void* TRUE ; 
 int /*<<< orphan*/ * card_fw ; 
 int FUNC1 (struct echoaudio*) ; 
 int FUNC2 (struct echoaudio*) ; 
 int FUNC3 (struct echoaudio*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct echoaudio *chip, u16 device_id, u16 subdevice_id)
{
	int err;

	FUNC0(("init_hw() - Indigo IOx\n"));
	if (FUNC4((subdevice_id & 0xfff0) != INDIGO_IOX))
		return -ENODEV;

	err = FUNC1(chip);
	if (err < 0) {
		FUNC0(("init_hw - could not initialize DSP comm page\n"));
		return err;
	}

	chip->device_id = device_id;
	chip->subdevice_id = subdevice_id;
	chip->bad_board = TRUE;
	chip->dsp_code_to_load = &card_fw[FW_INDIGO_IOX_DSP];
	/* Since this card has no ASIC, mark it as loaded so everything
	   works OK */
	chip->asic_loaded = TRUE;
	chip->input_clock_types = ECHO_CLOCK_BIT_INTERNAL;

	err = FUNC3(chip);
	if (err < 0)
		return err;
	chip->bad_board = FALSE;

	err = FUNC2(chip);
	if (err < 0)
		return err;

	FUNC0(("init_hw done\n"));
	return err;
}