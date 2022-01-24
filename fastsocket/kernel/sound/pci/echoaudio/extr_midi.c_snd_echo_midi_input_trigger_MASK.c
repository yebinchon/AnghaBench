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
struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct echoaudio {int midi_input_enabled; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {struct echoaudio* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct echoaudio*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct snd_rawmidi_substream *substream,
					int up)
{
	struct echoaudio *chip = substream->rmidi->private_data;

	if (up != chip->midi_input_enabled) {
		FUNC1(&chip->lock);
		FUNC0(chip, up);
		FUNC2(&chip->lock);
		chip->midi_input_enabled = up;
	}
}