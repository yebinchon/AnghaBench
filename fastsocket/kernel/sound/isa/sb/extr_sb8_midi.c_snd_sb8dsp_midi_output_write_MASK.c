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
struct snd_sb {scalar_t__ hardware; int /*<<< orphan*/  open_lock; int /*<<< orphan*/  midi_timer; int /*<<< orphan*/  open; } ;
struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct TYPE_2__ {struct snd_sb* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_sb*,int /*<<< orphan*/ ) ; 
 char SB_DSP_MIDI_OUTPUT ; 
 scalar_t__ SB_HW_20 ; 
 int /*<<< orphan*/  SB_OPEN_MIDI_OUTPUT_TRIGGER ; 
 int /*<<< orphan*/  STATUS ; 
 int /*<<< orphan*/  WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_rawmidi_substream*,int) ; 
 int FUNC5 (struct snd_rawmidi_substream*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_sb*,char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC9(struct snd_rawmidi_substream *substream)
{
	unsigned long flags;
	struct snd_sb *chip;
	char byte;
	int max = 32;

	/* how big is Tx FIFO? */
	chip = substream->rmidi->private_data;
	while (max-- > 0) {
		FUNC7(&chip->open_lock, flags);
		if (FUNC5(substream, &byte, 1) != 1) {
			chip->open &= ~SB_OPEN_MIDI_OUTPUT_TRIGGER;
			FUNC1(&chip->midi_timer);
			FUNC8(&chip->open_lock, flags);
			break;
		}
		if (chip->hardware >= SB_HW_20) {
			int timeout = 8;
			while ((FUNC2(FUNC0(chip, STATUS)) & 0x80) != 0 && --timeout > 0)
				;
			if (timeout == 0) {
				/* Tx FIFO full - try again later */
				FUNC8(&chip->open_lock, flags);
				break;
			}
			FUNC3(byte, FUNC0(chip, WRITE));
		} else {
			FUNC6(chip, SB_DSP_MIDI_OUTPUT);
			FUNC6(chip, byte);
		}
		FUNC4(substream, 1);
		FUNC8(&chip->open_lock, flags);
	}
}