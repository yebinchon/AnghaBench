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
struct snd_kcontrol {int /*<<< orphan*/  private_value; } ;
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hda_codec {int dummy; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 unsigned int AC_PINCTL_VREFEN ; 
 unsigned int PIN_HP ; 
 unsigned int PIN_IN ; 
 unsigned int PIN_OUT ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (unsigned int,unsigned int) ; 
 unsigned int FUNC6 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct hda_codec*,int /*<<< orphan*/ ,unsigned int) ; 
 struct hda_codec* FUNC9 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC10(struct snd_kcontrol *kcontrol,
				struct snd_ctl_elem_value *ucontrol)
{
	struct hda_codec *codec = FUNC9(kcontrol);
	hda_nid_t nid = kcontrol->private_value;
	int out_jacks = FUNC3(codec, nid);
	int in_jacks = FUNC2(codec, nid);
	unsigned int val, oldval, idx;

	oldval = FUNC1(codec, nid);
	idx = ucontrol->value.enumerated.item[0];
	if (oldval == idx)
		return 0;

	if (idx < out_jacks) {
		if (out_jacks > 1)
			val = idx ? PIN_HP : PIN_OUT;
		else
			val = PIN_HP;
	} else {
		idx -= out_jacks;
		if (in_jacks > 1) {
			unsigned int vref_caps = FUNC4(codec, nid);
			val = FUNC6(codec, nid);
			val &= ~(AC_PINCTL_VREFEN | PIN_HP);
			val |= FUNC5(vref_caps, idx) | PIN_IN;
		} else
			val = FUNC7(codec, nid);
	}
	FUNC8(codec, nid, val);
	FUNC0(codec, NULL);

	return 1;
}