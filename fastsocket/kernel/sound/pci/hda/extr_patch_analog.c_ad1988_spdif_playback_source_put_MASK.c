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
struct hda_codec {int dummy; } ;

/* Variables and functions */
 int AC_AMP_GET_INPUT ; 
 int /*<<< orphan*/  AC_VERB_GET_AMP_GAIN_MUTE ; 
 int /*<<< orphan*/  AC_VERB_GET_CONNECT_SEL ; 
 int /*<<< orphan*/  AC_VERB_SET_AMP_GAIN_MUTE ; 
 int /*<<< orphan*/  AC_VERB_SET_CONNECT_SEL ; 
 unsigned int FUNC0 (int) ; 
 unsigned int FUNC1 (int) ; 
 int EINVAL ; 
 int FUNC2 (struct hda_codec*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct hda_codec* FUNC4 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
					    struct snd_ctl_elem_value *ucontrol)
{
	struct hda_codec *codec = FUNC4(kcontrol);
	unsigned int val, sel;
	int change;

	val = ucontrol->value.enumerated.item[0];
	if (val > 3)
		return -EINVAL;
	if (!val) {
		sel = FUNC2(codec, 0x1d, 0,
					 AC_VERB_GET_AMP_GAIN_MUTE,
					 AC_AMP_GET_INPUT);
		change = sel & 0x80;
		if (change) {
			FUNC3(codec, 0x1d, 0,
						  AC_VERB_SET_AMP_GAIN_MUTE,
						  FUNC1(0));
			FUNC3(codec, 0x1d, 0,
						  AC_VERB_SET_AMP_GAIN_MUTE,
						  FUNC0(1));
		}
	} else {
		sel = FUNC2(codec, 0x1d, 0,
					 AC_VERB_GET_AMP_GAIN_MUTE,
					 AC_AMP_GET_INPUT | 0x01);
		change = sel & 0x80;
		if (change) {
			FUNC3(codec, 0x1d, 0,
						  AC_VERB_SET_AMP_GAIN_MUTE,
						  FUNC0(0));
			FUNC3(codec, 0x1d, 0,
						  AC_VERB_SET_AMP_GAIN_MUTE,
						  FUNC1(1));
		}
		sel = FUNC2(codec, 0x0b, 0,
					 AC_VERB_GET_CONNECT_SEL, 0) + 1;
		change |= sel != val;
		if (change)
			FUNC3(codec, 0x0b, 0,
						  AC_VERB_SET_CONNECT_SEL,
						  val - 1);
	}
	return change;
}