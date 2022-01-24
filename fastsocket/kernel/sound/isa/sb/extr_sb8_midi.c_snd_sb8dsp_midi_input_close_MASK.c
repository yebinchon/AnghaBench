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
struct snd_sb {int open; int /*<<< orphan*/  open_lock; int /*<<< orphan*/ * midi_substream_input; } ;
struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct TYPE_2__ {struct snd_sb* private_data; } ;

/* Variables and functions */
 int SB_OPEN_MIDI_INPUT ; 
 int SB_OPEN_MIDI_INPUT_TRIGGER ; 
 int SB_OPEN_MIDI_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (struct snd_sb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct snd_rawmidi_substream *substream)
{
	unsigned long flags;
	struct snd_sb *chip;

	chip = substream->rmidi->private_data;
	FUNC1(&chip->open_lock, flags);
	chip->open &= ~(SB_OPEN_MIDI_INPUT | SB_OPEN_MIDI_INPUT_TRIGGER);
	chip->midi_substream_input = NULL;
	if (!(chip->open & SB_OPEN_MIDI_OUTPUT)) {
		FUNC2(&chip->open_lock, flags);
		FUNC0(chip);		/* reset DSP */
	} else {
		FUNC2(&chip->open_lock, flags);
	}
	return 0;
}