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
struct via_spec {int dmic_enabled; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hda_codec {struct via_spec* spec; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_VERB_SET_CONNECT_SEL ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct hda_codec* FUNC2 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
			   struct snd_ctl_elem_value *ucontrol)
{
	struct hda_codec *codec = FUNC2(kcontrol);
	struct via_spec *spec = codec->spec;
	int index = *ucontrol->value.integer.value;

	FUNC1(codec, 0x26, 0,
					       AC_VERB_SET_CONNECT_SEL, index);
	spec->dmic_enabled = index;
	FUNC0(codec);
	return 1;
}