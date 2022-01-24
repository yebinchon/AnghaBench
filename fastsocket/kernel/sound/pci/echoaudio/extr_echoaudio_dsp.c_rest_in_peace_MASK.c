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
struct echoaudio {int /*<<< orphan*/ * dsp_code; int /*<<< orphan*/  active_mask; int /*<<< orphan*/  pipe_alloc_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DSP_VC_GO_COMATOSE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct echoaudio*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct echoaudio *chip)
{
	FUNC0(("rest_in_peace() open=%x\n", chip->pipe_alloc_mask));

	/* Stops all active pipes (just to be sure) */
	FUNC4(chip, chip->active_mask);

	FUNC3(chip, FALSE);

#ifdef ECHOCARD_HAS_MIDI
	enable_midi_input(chip, FALSE);
#endif

	/* Go to sleep */
	if (chip->dsp_code) {
		/* Make load_firmware do a complete reload */
		chip->dsp_code = NULL;
		/* Put the DSP to sleep */
		return FUNC2(chip, DSP_VC_GO_COMATOSE);
	}
	return 0;
}