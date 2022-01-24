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
struct echoaudio {int /*<<< orphan*/  output_clock; int /*<<< orphan*/  input_clock; scalar_t__ meters_enabled; int /*<<< orphan*/  sample_rate; TYPE_1__* comm_page; } ;
struct TYPE_2__ {int handshake; int /*<<< orphan*/  gd_spdif_status; int /*<<< orphan*/  gd_clock_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DSP_VC_METERS_ON ; 
 int /*<<< orphan*/  DSP_VC_UPDATE_FLAGS ; 
 int EIO ; 
 int /*<<< orphan*/  GD_CLOCK_UNDEF ; 
 int /*<<< orphan*/  GD_SPDIF_STATUS_UNDEF ; 
 int FUNC1 (struct echoaudio*) ; 
 int /*<<< orphan*/  FUNC2 (struct echoaudio*) ; 
 int FUNC3 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct echoaudio*) ; 
 scalar_t__ FUNC8 (struct echoaudio*) ; 
 scalar_t__ FUNC9 (struct echoaudio*) ; 
 scalar_t__ FUNC10 (struct echoaudio*) ; 

__attribute__((used)) static int FUNC11(struct echoaudio *chip)
{
	int err;
	FUNC0(("restore_dsp_settings\n"));

	if ((err = FUNC1(chip)) < 0)
		return err;

	/* @ Gina20/Darla20 only. Should be harmless for other cards. */
	chip->comm_page->gd_clock_state = GD_CLOCK_UNDEF;
	chip->comm_page->gd_spdif_status = GD_SPDIF_STATUS_UNDEF;
	chip->comm_page->handshake = 0xffffffff;

	if ((err = FUNC6(chip, chip->sample_rate)) < 0)
		return err;

	if (chip->meters_enabled)
		if (FUNC3(chip, DSP_VC_METERS_ON) < 0)
			return -EIO;

#ifdef ECHOCARD_HAS_EXTERNAL_CLOCK
	if (set_input_clock(chip, chip->input_clock) < 0)
		return -EIO;
#endif

#ifdef ECHOCARD_HAS_OUTPUT_CLOCK_SWITCH
	if (set_output_clock(chip, chip->output_clock) < 0)
		return -EIO;
#endif

	if (FUNC8(chip) < 0)
		return -EIO;

	if (FUNC7(chip) < 0)
		return -EIO;

#ifdef ECHOCARD_HAS_VMIXER
	if (update_vmixer_level(chip) < 0)
		return -EIO;
#endif

	if (FUNC10(chip) < 0)
		return -EIO;
	FUNC2(chip);

	FUNC0(("restore_dsp_rettings done\n"));
	return FUNC3(chip, DSP_VC_UPDATE_FLAGS);
}