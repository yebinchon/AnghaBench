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
struct soc_mixer_control {unsigned int reg; unsigned int shift; unsigned int rshift; int max; unsigned int invert; } ;
struct snd_soc_dapm_widget {scalar_t__ id; unsigned int saved_value; int /*<<< orphan*/  codec; int /*<<< orphan*/  power; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 struct snd_soc_dapm_widget* FUNC1 (struct snd_kcontrol*) ; 
 scalar_t__ snd_soc_dapm_pga ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 

int FUNC3(struct snd_kcontrol *kcontrol,
	struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_dapm_widget *widget = FUNC1(kcontrol);
	struct soc_mixer_control *mc =
		(struct soc_mixer_control *)kcontrol->private_value;
	unsigned int reg = mc->reg;
	unsigned int shift = mc->shift;
	unsigned int rshift = mc->rshift;
	int max = mc->max;
	unsigned int invert = mc->invert;
	unsigned int mask = (1 << FUNC0(max)) - 1;

	/* return the saved value if we are powered down */
	if (widget->id == snd_soc_dapm_pga && !widget->power) {
		ucontrol->value.integer.value[0] = widget->saved_value;
		return 0;
	}

	ucontrol->value.integer.value[0] =
		(FUNC2(widget->codec, reg) >> shift) & mask;
	if (shift != rshift)
		ucontrol->value.integer.value[1] =
			(FUNC2(widget->codec, reg) >> rshift) & mask;
	if (invert) {
		ucontrol->value.integer.value[0] =
			max - ucontrol->value.integer.value[0];
		if (shift != rshift)
			ucontrol->value.integer.value[1] =
				max - ucontrol->value.integer.value[1];
	}

	return 0;
}