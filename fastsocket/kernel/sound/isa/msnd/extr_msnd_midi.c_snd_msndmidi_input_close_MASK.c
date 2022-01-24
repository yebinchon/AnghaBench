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
struct snd_msndmidi {int /*<<< orphan*/  dev; int /*<<< orphan*/ * substream_input; int /*<<< orphan*/  mode; } ;
struct TYPE_2__ {struct snd_msndmidi* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDEX_MIDI_IN_STOP ; 
 int /*<<< orphan*/  MSNDMIDI_MODE_BIT_INPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_rawmidi_substream *substream)
{
	struct snd_msndmidi *mpu;

	mpu = substream->rmidi->private_data;
	FUNC2(mpu->dev, HDEX_MIDI_IN_STOP);
	FUNC0(MSNDMIDI_MODE_BIT_INPUT, &mpu->mode);
	mpu->substream_input = NULL;
	FUNC1(mpu->dev);
	return 0;
}