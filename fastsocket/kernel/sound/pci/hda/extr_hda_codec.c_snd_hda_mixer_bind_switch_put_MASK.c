#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct snd_kcontrol {unsigned long private_value; } ;
struct snd_ctl_elem_value {int dummy; } ;
struct hda_codec {int /*<<< orphan*/  control_mutex; } ;

/* Variables and functions */
 unsigned long AMP_VAL_IDX_MASK ; 
 unsigned long AMP_VAL_IDX_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ; 
 struct hda_codec* FUNC3 (struct snd_kcontrol*) ; 

int FUNC4(struct snd_kcontrol *kcontrol,
				  struct snd_ctl_elem_value *ucontrol)
{
	struct hda_codec *codec = FUNC3(kcontrol);
	unsigned long pval;
	int i, indices, err = 0, change = 0;

	FUNC0(&codec->control_mutex);
	pval = kcontrol->private_value;
	indices = (pval & AMP_VAL_IDX_MASK) >> AMP_VAL_IDX_SHIFT;
	for (i = 0; i < indices; i++) {
		kcontrol->private_value = (pval & ~AMP_VAL_IDX_MASK) |
			(i << AMP_VAL_IDX_SHIFT);
		err = FUNC2(kcontrol, ucontrol);
		if (err < 0)
			break;
		change |= err;
	}
	kcontrol->private_value = pval;
	FUNC1(&codec->control_mutex);
	return err < 0 ? err : change;
}