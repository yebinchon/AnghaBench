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
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hda_input_mux {unsigned int num_items; } ;
struct hda_codec {struct conexant_spec* spec; } ;
struct conexant_spec {unsigned int dc_input_bias; scalar_t__ dc_enable; } ;

/* Variables and functions */
 struct hda_input_mux cxt5066_analog_mic_boost ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*) ; 
 struct hda_codec* FUNC1 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC2(struct snd_kcontrol *kcontrol,
					  struct snd_ctl_elem_value *ucontrol)
{
	struct hda_codec *codec = FUNC1(kcontrol);
	struct conexant_spec *spec = codec->spec;
	const struct hda_input_mux *imux = &cxt5066_analog_mic_boost;
	unsigned int idx;

	idx = ucontrol->value.enumerated.item[0];
	if (idx >= imux->num_items)
		idx = imux->num_items - 1;

	spec->dc_input_bias = idx;
	if (spec->dc_enable)
		FUNC0(codec);
	return 1;
}