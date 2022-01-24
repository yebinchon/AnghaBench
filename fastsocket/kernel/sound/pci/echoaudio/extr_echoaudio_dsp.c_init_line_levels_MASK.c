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
struct echoaudio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ECHOGAIN_MUTED ; 
 int FUNC1 (struct echoaudio*) ; 
 int FUNC2 (struct echoaudio*) ; 
 int FUNC3 (struct echoaudio*) ; 
 int FUNC4 (struct echoaudio*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct echoaudio*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct echoaudio*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct echoaudio*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct echoaudio*) ; 
 int FUNC9 (struct echoaudio*) ; 
 int FUNC10 (struct echoaudio*) ; 

__attribute__((used)) static int FUNC11(struct echoaudio *chip)
{
	int st, i, o;

	FUNC0(("init_line_levels\n"));

	/* Mute output busses */
	for (i = 0; i < FUNC2(chip); i++)
		if ((st = FUNC6(chip, i, ECHOGAIN_MUTED)))
			return st;
	if ((st = FUNC9(chip)))
		return st;

#ifdef ECHOCARD_HAS_VMIXER
	/* Mute the Vmixer */
	for (i = 0; i < num_pipes_out(chip); i++)
		for (o = 0; o < num_busses_out(chip); o++)
			if ((st = set_vmixer_gain(chip, o, i, ECHOGAIN_MUTED)))
				return st;
	if ((st = update_vmixer_level(chip)))
		return st;
#endif /* ECHOCARD_HAS_VMIXER */

#ifdef ECHOCARD_HAS_MONITOR
	/* Mute the monitor mixer */
	for (o = 0; o < num_busses_out(chip); o++)
		for (i = 0; i < num_busses_in(chip); i++)
			if ((st = set_monitor_gain(chip, o, i, ECHOGAIN_MUTED)))
				return st;
	if ((st = update_output_line_level(chip)))
		return st;
#endif /* ECHOCARD_HAS_MONITOR */

#ifdef ECHOCARD_HAS_INPUT_GAIN
	for (i = 0; i < num_busses_in(chip); i++)
		if ((st = set_input_gain(chip, i, ECHOGAIN_MUTED)))
			return st;
	if ((st = update_input_line_level(chip)))
		return st;
#endif /* ECHOCARD_HAS_INPUT_GAIN */

	return 0;
}