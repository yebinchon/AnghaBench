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
struct snd_kcontrol {long private_value; } ;
struct snd_ctl_elem_info {int dummy; } ;
struct hda_codec {int /*<<< orphan*/  control_mutex; } ;
struct hda_bind_ctls {long* values; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* info ) (struct snd_kcontrol*,struct snd_ctl_elem_info*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct hda_codec* FUNC2 (struct snd_kcontrol*) ; 
 int FUNC3 (struct snd_kcontrol*,struct snd_ctl_elem_info*) ; 

int FUNC4(struct snd_kcontrol *kcontrol,
				 struct snd_ctl_elem_info *uinfo)
{
	struct hda_codec *codec = FUNC2(kcontrol);
	struct hda_bind_ctls *c;
	int err;

	FUNC0(&codec->control_mutex);
	c = (struct hda_bind_ctls *)kcontrol->private_value;
	kcontrol->private_value = *c->values;
	err = c->ops->info(kcontrol, uinfo);
	kcontrol->private_value = (long)c;
	FUNC1(&codec->control_mutex);
	return err;
}