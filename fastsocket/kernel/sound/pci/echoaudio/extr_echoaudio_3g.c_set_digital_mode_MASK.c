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
typedef  int u8 ;
struct echoaudio {int pipe_alloc_mask; int digital_modes; int digital_mode; int /*<<< orphan*/  lock; int /*<<< orphan*/ * output_gain; int /*<<< orphan*/ * input_gain; int /*<<< orphan*/ ** monitor_gain; } ;

/* Variables and functions */
 int DIGITAL_MODE_ADAT ; 
 int EAGAIN ; 
 int EINVAL ; 
 int FUNC0 (struct echoaudio*,int) ; 
 int FUNC1 (struct echoaudio*) ; 
 int FUNC2 (struct echoaudio*) ; 
 int /*<<< orphan*/  FUNC3 (struct echoaudio*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct echoaudio*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct echoaudio*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct echoaudio*) ; 
 int /*<<< orphan*/  FUNC10 (struct echoaudio*) ; 

__attribute__((used)) static int FUNC11(struct echoaudio *chip, u8 mode)
{
	u8 previous_mode;
	int err, i, o;

	/* All audio channels must be closed before changing the digital mode */
	if (FUNC6(chip->pipe_alloc_mask))
		return -EAGAIN;

	if (FUNC6(!(chip->digital_modes & (1 << mode))))
		return -EINVAL;

	previous_mode = chip->digital_mode;
	err = FUNC0(chip, mode);

	/* If we successfully changed the digital mode from or to ADAT,
	 * then make sure all output, input and monitor levels are
	 * updated by the DSP comm object. */
	if (err >= 0 && previous_mode != mode &&
	    (previous_mode == DIGITAL_MODE_ADAT || mode == DIGITAL_MODE_ADAT)) {
		FUNC7(&chip->lock);
		for (o = 0; o < FUNC2(chip); o++)
			for (i = 0; i < FUNC1(chip); i++)
				FUNC4(chip, o, i,
						 chip->monitor_gain[o][i]);

#ifdef ECHOCARD_HAS_INPUT_GAIN
		for (i = 0; i < num_busses_in(chip); i++)
			set_input_gain(chip, i, chip->input_gain[i]);
		update_input_line_level(chip);
#endif

		for (o = 0; o < FUNC2(chip); o++)
			FUNC5(chip, o, chip->output_gain[o]);
		FUNC10(chip);
		FUNC8(&chip->lock);
	}

	return err;
}