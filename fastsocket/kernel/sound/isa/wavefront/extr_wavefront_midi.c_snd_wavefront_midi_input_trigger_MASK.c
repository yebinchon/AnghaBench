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
typedef  size_t snd_wavefront_mpu_id ;
struct TYPE_5__ {int /*<<< orphan*/  virtual; int /*<<< orphan*/ * mode; } ;
typedef  TYPE_2__ snd_wavefront_midi_t ;
struct TYPE_4__ {int /*<<< orphan*/ * private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPU401_MODE_INPUT_TRIGGER ; 
 TYPE_2__* FUNC0 (struct snd_rawmidi_substream*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct snd_rawmidi_substream *substream, int up)
{
	unsigned long flags;
	snd_wavefront_midi_t *midi;
	snd_wavefront_mpu_id mpu;

	if (substream == NULL || substream->rmidi == NULL) 
	        return;

	if (substream->rmidi->private_data == NULL)
	        return;

	mpu = *((snd_wavefront_mpu_id *) substream->rmidi->private_data);

	if ((midi = FUNC0 (substream)) == NULL) {
		return;
	}

	FUNC1 (&midi->virtual, flags);
	if (up) {
		midi->mode[mpu] |= MPU401_MODE_INPUT_TRIGGER;
	} else {
		midi->mode[mpu] &= ~MPU401_MODE_INPUT_TRIGGER;
	}
	FUNC2 (&midi->virtual, flags);
}