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
 int /*<<< orphan*/  FUNC2 (struct snd_ymfpci*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ymfpci *chip = FUNC0(kcontrol);
	unsigned int reg = kcontrol->private_value;
	unsigned int shift_left = 0, shift_right = 16, mask = 16383;
	int change;
	unsigned int val1, val2, oval;
	
	if (reg < 0x80 || reg >= 0xc0)
		return -EINVAL;
	val1 = ucontrol->value.integer.value[0] & mask;
	val2 = ucontrol->value.integer.value[1] & mask;
	val1 <<= shift_left;
	val2 <<= shift_right;
	FUNC3(&chip->reg_lock);
	oval = FUNC1(chip, reg);
	val1 = (oval & ~((mask << shift_left) | (mask << shift_right))) | val1 | val2;
	change = val1 != oval;
	FUNC2(chip, reg, val1);
	FUNC4(&chip->reg_lock);
	return change;
}