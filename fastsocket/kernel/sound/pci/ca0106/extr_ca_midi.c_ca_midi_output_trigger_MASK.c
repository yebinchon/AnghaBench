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
struct snd_ca_midi {int midi_mode; int /*<<< orphan*/  tx_enable; int /*<<< orphan*/  (* interrupt_disable ) (struct snd_ca_midi*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* interrupt_enable ) (struct snd_ca_midi*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  output_lock; int /*<<< orphan*/  dev_id; } ;
struct TYPE_2__ {struct snd_ca_midi* private_data; } ;

/* Variables and functions */
 int CA_MIDI_MODE_OUTPUT ; 
 scalar_t__ FUNC0 (struct snd_ca_midi*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ca_midi*,unsigned char) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct snd_rawmidi_substream*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_ca_midi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_ca_midi*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct snd_rawmidi_substream *substream, int up)
{
	struct snd_ca_midi *midi = substream->rmidi->private_data;
	unsigned long flags;

	if (FUNC2(!midi->dev_id))
		return;

	if (up) {
		int max = 4;
		unsigned char byte;

		FUNC4(&midi->output_lock, flags);
	
		/* try to send some amount of bytes here before interrupts */
		while (max > 0) {
			if (FUNC0(midi)) {
				if (!(midi->midi_mode & CA_MIDI_MODE_OUTPUT) ||
				    FUNC3(substream, &byte, 1) != 1) {
					/* no more data */
					FUNC5(&midi->output_lock, flags);
					return;
				}
				FUNC1(midi, byte);
				max--;
			} else {
				break;
			}
		}

		FUNC5(&midi->output_lock, flags);
		midi->interrupt_enable(midi,midi->tx_enable);

	} else {
		midi->interrupt_disable(midi,midi->tx_enable);
	}
}