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
struct soc_enum {scalar_t__ max; } ;
struct snd_soc_codec {int /*<<< orphan*/  mutex; int /*<<< orphan*/  control_data; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {scalar_t__* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int AMS_DELTA_AGC ; 
 int AMS_DELTA_EARPIECE ; 
 int AMS_DELTA_MICROPHONE ; 
 int AMS_DELTA_MOUTHPIECE ; 
 int AMS_DELTA_SPEAKER ; 
 int EINVAL ; 
 int EUNATCH ; 
 int ams_delta_audio_agc ; 
 unsigned short* ams_delta_audio_mode_pins ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct snd_soc_codec* FUNC2 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_codec*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_codec*,char*) ; 
 int FUNC5 (struct snd_soc_codec*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_codec*) ; 

__attribute__((used)) static int FUNC7(struct snd_kcontrol *kcontrol,
					struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_codec *codec =  FUNC2(kcontrol);
	struct soc_enum *control = (struct soc_enum *)kcontrol->private_value;
	unsigned short pins;
	int pin, changed = 0;

	/* Refuse any mode changes if we are not able to control the codec. */
	if (!codec->control_data)
		return -EUNATCH;

	if (ucontrol->value.enumerated.item[0] >= control->max)
		return -EINVAL;

	FUNC0(&codec->mutex);

	/* Translate selection to bitmap */
	pins = ams_delta_audio_mode_pins[ucontrol->value.enumerated.item[0]];

	/* Setup pins after corresponding bits if changed */
	pin = !!(pins & (1 << AMS_DELTA_MOUTHPIECE));
	if (pin != FUNC5(codec, "Mouthpiece")) {
		changed = 1;
		if (pin)
			FUNC4(codec, "Mouthpiece");
		else
			FUNC3(codec, "Mouthpiece");
	}
	pin = !!(pins & (1 << AMS_DELTA_EARPIECE));
	if (pin != FUNC5(codec, "Earpiece")) {
		changed = 1;
		if (pin)
			FUNC4(codec, "Earpiece");
		else
			FUNC3(codec, "Earpiece");
	}
	pin = !!(pins & (1 << AMS_DELTA_MICROPHONE));
	if (pin != FUNC5(codec, "Microphone")) {
		changed = 1;
		if (pin)
			FUNC4(codec, "Microphone");
		else
			FUNC3(codec, "Microphone");
	}
	pin = !!(pins & (1 << AMS_DELTA_SPEAKER));
	if (pin != FUNC5(codec, "Speaker")) {
		changed = 1;
		if (pin)
			FUNC4(codec, "Speaker");
		else
			FUNC3(codec, "Speaker");
	}
	pin = !!(pins & (1 << AMS_DELTA_AGC));
	if (pin != ams_delta_audio_agc) {
		ams_delta_audio_agc = pin;
		changed = 1;
		if (pin)
			FUNC4(codec, "AGCIN");
		else
			FUNC3(codec, "AGCIN");
	}
	if (changed)
		FUNC6(codec);

	FUNC1(&codec->mutex);

	return changed;
}