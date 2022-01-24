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
struct TYPE_5__ {int /*<<< orphan*/  open; struct snd_rawmidi_substream** substream_input; int /*<<< orphan*/ * mode; } ;
typedef  TYPE_2__ snd_wavefront_midi_t ;
struct TYPE_4__ {scalar_t__ private_data; } ;

/* Variables and functions */
 int EIO ; 
 int ENXIO ; 
 int /*<<< orphan*/  MPU401_MODE_INPUT ; 
 TYPE_2__* FUNC0 (struct snd_rawmidi_substream*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct snd_rawmidi_substream *substream)
{
	unsigned long flags;
	snd_wavefront_midi_t *midi;
	snd_wavefront_mpu_id mpu;

	if (FUNC1(!substream || !substream->rmidi))
		return -ENXIO;
	if (FUNC1(!substream->rmidi->private_data))
		return -ENXIO;

	mpu = *((snd_wavefront_mpu_id *) substream->rmidi->private_data);

	if ((midi = FUNC0 (substream)) == NULL)
	        return -EIO;

	FUNC2 (&midi->open, flags);
	midi->mode[mpu] |= MPU401_MODE_INPUT;
	midi->substream_input[mpu] = substream;
	FUNC3 (&midi->open, flags);

	return 0;
}