#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct TYPE_5__ {unsigned long data; int /*<<< orphan*/  (* function ) (unsigned long) ;} ;
struct echoaudio {int tinuse; int /*<<< orphan*/  midi_full; int /*<<< orphan*/  lock; TYPE_2__ timer; } ;
struct TYPE_4__ {struct echoaudio* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct snd_rawmidi_substream *substream,
					 int up)
{
	struct echoaudio *chip = substream->rmidi->private_data;

	FUNC0(("snd_echo_midi_output_trigger(%d)\n", up));
	FUNC4(&chip->lock);
	if (up) {
		if (!chip->tinuse) {
			FUNC2(&chip->timer);
			chip->timer.function = snd_echo_midi_output_write;
			chip->timer.data = (unsigned long)chip;
			chip->tinuse = 1;
		}
	} else {
		if (chip->tinuse) {
			chip->tinuse = 0;
			FUNC5(&chip->lock);
			FUNC1(&chip->timer);
			FUNC0(("Timer removed\n"));
			return;
		}
	}
	FUNC5(&chip->lock);

	if (up && !chip->midi_full)
		FUNC3((unsigned long)chip);
}