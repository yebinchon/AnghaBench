#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct snd_rawmidi_substream {TYPE_2__* rmidi; } ;
typedef  size_t snd_wavefront_mpu_id ;
struct TYPE_10__ {unsigned long data; scalar_t__ expires; int /*<<< orphan*/  function; } ;
struct TYPE_9__ {int* mode; int /*<<< orphan*/  virtual; int /*<<< orphan*/  istimer; TYPE_4__ timer; } ;
typedef  TYPE_3__ snd_wavefront_midi_t ;
typedef  int /*<<< orphan*/  snd_wavefront_card_t ;
struct TYPE_8__ {TYPE_1__* card; int /*<<< orphan*/ * private_data; } ;
struct TYPE_7__ {scalar_t__ private_data; } ;

/* Variables and functions */
 int MPU401_MODE_OUTPUT_TRIGGER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 TYPE_3__* FUNC1 (struct snd_rawmidi_substream*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  snd_wavefront_midi_output_timer ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct snd_rawmidi_substream *substream, int up)
{
	unsigned long flags;
	snd_wavefront_midi_t *midi;
	snd_wavefront_mpu_id mpu;

	if (substream == NULL || substream->rmidi == NULL) 
	        return;

	if (substream->rmidi->private_data == NULL)
	        return;

	mpu = *((snd_wavefront_mpu_id *) substream->rmidi->private_data);

	if ((midi = FUNC1 (substream)) == NULL) {
		return;
	}

	FUNC4 (&midi->virtual, flags);
	if (up) {
		if ((midi->mode[mpu] & MPU401_MODE_OUTPUT_TRIGGER) == 0) {
			if (!midi->istimer) {
				FUNC2(&midi->timer);
				midi->timer.function = snd_wavefront_midi_output_timer;
				midi->timer.data = (unsigned long) substream->rmidi->card->private_data;
				midi->timer.expires = 1 + jiffies;
				FUNC0(&midi->timer);
			}
			midi->istimer++;
			midi->mode[mpu] |= MPU401_MODE_OUTPUT_TRIGGER;
		}
	} else {
		midi->mode[mpu] &= ~MPU401_MODE_OUTPUT_TRIGGER;
	}
	FUNC5 (&midi->virtual, flags);

	if (up)
		FUNC3((snd_wavefront_card_t *)substream->rmidi->card->private_data);
}