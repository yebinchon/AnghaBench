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
struct via_spec {unsigned int no_pin_power_ctl; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hda_codec {struct via_spec* spec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*) ; 
 struct hda_codec* FUNC2 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
				 struct snd_ctl_elem_value *ucontrol)
{
	struct hda_codec *codec = FUNC2(kcontrol);
	struct via_spec *spec = codec->spec;
	unsigned int val = !ucontrol->value.enumerated.item[0];

	if (val == spec->no_pin_power_ctl)
		return 0;
	spec->no_pin_power_ctl = val;
	FUNC1(codec);
	FUNC0(codec);
	return 1;
}