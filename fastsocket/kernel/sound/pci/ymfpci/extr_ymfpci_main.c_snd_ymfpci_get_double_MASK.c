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
struct snd_ymfpci {int /*<<< orphan*/  reg_lock; } ;
struct snd_kcontrol {unsigned int private_value; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int EINVAL ; 
 struct snd_ymfpci* FUNC0 (struct snd_kcontrol*) ; 
 unsigned int FUNC1 (struct snd_ymfpci*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ymfpci *chip = FUNC0(kcontrol);
	unsigned int reg = kcontrol->private_value;
	unsigned int shift_left = 0, shift_right = 16, mask = 16383;
	unsigned int val;
	
	if (reg < 0x80 || reg >= 0xc0)
		return -EINVAL;
	FUNC2(&chip->reg_lock);
	val = FUNC1(chip, reg);
	FUNC3(&chip->reg_lock);
	ucontrol->value.integer.value[0] = (val >> shift_left) & mask;
	ucontrol->value.integer.value[1] = (val >> shift_right) & mask;
	return 0;
}