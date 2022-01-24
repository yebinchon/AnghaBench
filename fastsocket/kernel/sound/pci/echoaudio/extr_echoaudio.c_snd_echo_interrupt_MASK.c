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
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct echoaudio {int* last_period; int /*<<< orphan*/  midi_buffer; scalar_t__ midi_in; int /*<<< orphan*/  lock; struct snd_pcm_substream** substream; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int period_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int DSP_MAXPIPES ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int FUNC1 (struct snd_pcm_substream*) ; 
 int FUNC2 (struct echoaudio*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct echoaudio *chip = dev_id;
	struct snd_pcm_substream *substream;
	int period, ss, st;

	FUNC5(&chip->lock);
	st = FUNC2(chip);
	if (st < 0) {
		FUNC6(&chip->lock);
		return IRQ_NONE;
	}
	/* The hardware doesn't tell us which substream caused the irq,
	thus we have to check all running substreams. */
	for (ss = 0; ss < DSP_MAXPIPES; ss++) {
		if ((substream = chip->substream[ss])) {
			period = FUNC1(substream) /
				substream->runtime->period_size;
			if (period != chip->last_period[ss]) {
				chip->last_period[ss] = period;
				FUNC6(&chip->lock);
				FUNC3(substream);
				FUNC5(&chip->lock);
			}
		}
	}
	FUNC6(&chip->lock);

#ifdef ECHOCARD_HAS_MIDI
	if (st > 0 && chip->midi_in) {
		snd_rawmidi_receive(chip->midi_in, chip->midi_buffer, st);
		DE_MID(("rawmidi_iread=%d\n", st));
	}
#endif
	return IRQ_HANDLED;
}