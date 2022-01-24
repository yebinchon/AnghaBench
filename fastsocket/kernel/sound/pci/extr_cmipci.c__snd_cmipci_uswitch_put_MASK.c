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
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct cmipci_switch_args {unsigned int mask; unsigned int mask_on; scalar_t__ reg; scalar_t__ is_byte; scalar_t__ ac3_sensitive; } ;
struct cmipci {int /*<<< orphan*/  reg_lock; scalar_t__ iobase; scalar_t__ mixer_insensitive; } ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,scalar_t__) ; 
 unsigned int FUNC2 (struct cmipci*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct cmipci*,scalar_t__,unsigned int) ; 
 struct cmipci* FUNC4 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct snd_kcontrol *kcontrol,
				   struct snd_ctl_elem_value *ucontrol,
				   struct cmipci_switch_args *args)
{
	unsigned int val;
	int change;
	struct cmipci *cm = FUNC4(kcontrol);

	FUNC5(&cm->reg_lock);
	if (args->ac3_sensitive && cm->mixer_insensitive) {
		/* ignored */
		FUNC6(&cm->reg_lock);
		return 0;
	}
	if (args->is_byte)
		val = FUNC0(cm->iobase + args->reg);
	else
		val = FUNC2(cm, args->reg);
	change = (val & args->mask) != (ucontrol->value.integer.value[0] ? 
			args->mask_on : (args->mask & ~args->mask_on));
	if (change) {
		val &= ~args->mask;
		if (ucontrol->value.integer.value[0])
			val |= args->mask_on;
		else
			val |= (args->mask & ~args->mask_on);
		if (args->is_byte)
			FUNC1((unsigned char)val, cm->iobase + args->reg);
		else
			FUNC3(cm, args->reg, val);
	}
	FUNC6(&cm->reg_lock);
	return change;
}