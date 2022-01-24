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
typedef  int u16 ;
struct echoaudio {int input_clock; void* clock_state; TYPE_1__* comm_page; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  spdif_status; } ;
struct TYPE_2__ {int /*<<< orphan*/  gd_spdif_status; void* gd_clock_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DSP_VC_SET_GD_AUDIO_STATE ; 
#define  ECHO_CLOCK_INTERNAL 129 
#define  ECHO_CLOCK_SPDIF 128 
 int EINVAL ; 
 void* GD_CLOCK_SPDIFIN ; 
 void* GD_CLOCK_UNDEF ; 
 int /*<<< orphan*/  GD_SPDIF_STATUS_NOCHANGE ; 
 int /*<<< orphan*/  GD_SPDIF_STATUS_UNDEF ; 
 int /*<<< orphan*/  FUNC1 (struct echoaudio*) ; 
 int /*<<< orphan*/  FUNC2 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct echoaudio*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct echoaudio *chip, u16 clock)
{
	FUNC0(("set_input_clock:\n"));

	switch (clock) {
	case ECHO_CLOCK_INTERNAL:
		/* Reset the audio state to unknown (just in case) */
		chip->clock_state = GD_CLOCK_UNDEF;
		chip->spdif_status = GD_SPDIF_STATUS_UNDEF;
		FUNC3(chip, chip->sample_rate);
		chip->input_clock = clock;
		FUNC0(("Set Gina clock to INTERNAL\n"));
		break;
	case ECHO_CLOCK_SPDIF:
		chip->comm_page->gd_clock_state = GD_CLOCK_SPDIFIN;
		chip->comm_page->gd_spdif_status = GD_SPDIF_STATUS_NOCHANGE;
		FUNC1(chip);
		FUNC2(chip, DSP_VC_SET_GD_AUDIO_STATE);
		chip->clock_state = GD_CLOCK_SPDIFIN;
		FUNC0(("Set Gina20 clock to SPDIF\n"));
		chip->input_clock = clock;
		break;
	default:
		return -EINVAL;
	}

	return 0;
}