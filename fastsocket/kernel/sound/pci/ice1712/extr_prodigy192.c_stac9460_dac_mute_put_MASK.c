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
struct snd_kcontrol {scalar_t__ private_value; } ;
struct snd_ice1712 {struct prodigy192_spec* spec; } ;
struct TYPE_3__ {int /*<<< orphan*/ * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int /*<<< orphan*/  id; } ;
struct prodigy192_spec {int /*<<< orphan*/  mute_mutex; } ;

/* Variables and functions */
 int STAC946X_LF_VOLUME ; 
 int STAC946X_MASTER_VOLUME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct snd_kcontrol*,int /*<<< orphan*/ *) ; 
 struct snd_ice1712* FUNC3 (struct snd_kcontrol*) ; 
 int FUNC4 (struct snd_ice1712*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ice1712 *ice = FUNC3(kcontrol);
	struct prodigy192_spec *spec = ice->spec;
	int idx, change;

	if (kcontrol->private_value)
		idx = STAC946X_MASTER_VOLUME;
	else
		idx  = FUNC2(kcontrol, &ucontrol->id) + STAC946X_LF_VOLUME;
	/* due to possible conflicts with stac9460_set_rate_val, mutexing */
	FUNC0(&spec->mute_mutex);
	/*
	printk(KERN_DEBUG "Mute put: reg 0x%02x, ctrl value: 0x%02x\n", idx,
	       ucontrol->value.integer.value[0]);
	*/
	change = FUNC4(ice, idx, ucontrol->value.integer.value[0]);
	FUNC1(&spec->mute_mutex);
	return change;
}