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
struct snd_kcontrol {unsigned long private_value; } ;
struct snd_ctl_elem_value {int dummy; } ;
struct hda_codec {int /*<<< orphan*/  control_mutex; } ;
struct hda_bind_ctls {unsigned long* values; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* put ) (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct hda_codec* FUNC2 (struct snd_kcontrol*) ; 
 int FUNC3 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ; 

int FUNC4(struct snd_kcontrol *kcontrol,
				struct snd_ctl_elem_value *ucontrol)
{
	struct hda_codec *codec = FUNC2(kcontrol);
	struct hda_bind_ctls *c;
	unsigned long *vals;
	int err = 0, change = 0;

	FUNC0(&codec->control_mutex);
	c = (struct hda_bind_ctls *)kcontrol->private_value;
	for (vals = c->values; *vals; vals++) {
		kcontrol->private_value = *vals;
		err = c->ops->put(kcontrol, ucontrol);
		if (err < 0)
			break;
		change |= err;
	}
	kcontrol->private_value = (long)c;
	FUNC1(&codec->control_mutex);
	return err < 0 ? err : change;
}