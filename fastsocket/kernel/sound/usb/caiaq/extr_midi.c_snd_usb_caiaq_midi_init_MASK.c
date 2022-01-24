#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ num_midi_out; scalar_t__ num_midi_in; } ;
struct TYPE_3__ {int /*<<< orphan*/  card; } ;
struct snd_usb_caiaqdev {struct snd_rawmidi* rmidi; TYPE_2__ spec; int /*<<< orphan*/  product_name; TYPE_1__ chip; } ;
struct snd_rawmidi {int /*<<< orphan*/  info_flags; struct snd_usb_caiaqdev* private_data; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_RAWMIDI_INFO_DUPLEX ; 
 int /*<<< orphan*/  SNDRV_RAWMIDI_INFO_INPUT ; 
 int /*<<< orphan*/  SNDRV_RAWMIDI_INFO_OUTPUT ; 
 int /*<<< orphan*/  SNDRV_RAWMIDI_STREAM_INPUT ; 
 int /*<<< orphan*/  SNDRV_RAWMIDI_STREAM_OUTPUT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,struct snd_rawmidi**) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_rawmidi*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  snd_usb_caiaq_midi_input ; 
 int /*<<< orphan*/  snd_usb_caiaq_midi_output ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct snd_usb_caiaqdev *device)
{
	int ret;
	struct snd_rawmidi *rmidi;

	ret = FUNC0(device->chip.card, device->product_name, 0,
					device->spec.num_midi_out,
					device->spec.num_midi_in,
					&rmidi);

	if (ret < 0)
		return ret;

	FUNC2(rmidi->name, device->product_name, sizeof(rmidi->name));

	rmidi->info_flags = SNDRV_RAWMIDI_INFO_DUPLEX;
	rmidi->private_data = device;

	if (device->spec.num_midi_out > 0) {
		rmidi->info_flags |= SNDRV_RAWMIDI_INFO_OUTPUT;
		FUNC1(rmidi, SNDRV_RAWMIDI_STREAM_OUTPUT,
				    &snd_usb_caiaq_midi_output);
	}

	if (device->spec.num_midi_in > 0) {
		rmidi->info_flags |= SNDRV_RAWMIDI_INFO_INPUT;
		FUNC1(rmidi, SNDRV_RAWMIDI_STREAM_INPUT,
				    &snd_usb_caiaq_midi_input);
	}

	device->rmidi = rmidi;

	return 0;
}