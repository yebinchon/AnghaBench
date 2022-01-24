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
struct snd_kcontrol {int private_value; } ;
struct snd_es1688 {int /*<<< orphan*/  reg_lock; } ;
struct TYPE_3__ {unsigned char* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 unsigned char FUNC0 (struct snd_es1688*,int) ; 
 unsigned char FUNC1 (struct snd_es1688*,int) ; 
 struct snd_es1688* FUNC2 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_es1688 *chip = FUNC2(kcontrol);
	unsigned long flags;
	int left_reg = kcontrol->private_value & 0xff;
	int right_reg = (kcontrol->private_value >> 8) & 0xff;
	int shift_left = (kcontrol->private_value >> 16) & 0x07;
	int shift_right = (kcontrol->private_value >> 19) & 0x07;
	int mask = (kcontrol->private_value >> 24) & 0xff;
	int invert = (kcontrol->private_value >> 22) & 1;
	unsigned char left, right;
	
	FUNC3(&chip->reg_lock, flags);
	if (left_reg < 0xa0)
		left = FUNC0(chip, left_reg);
	else
		left = FUNC1(chip, left_reg);
	if (left_reg != right_reg) {
		if (right_reg < 0xa0) 
			right = FUNC0(chip, right_reg);
		else
			right = FUNC1(chip, right_reg);
	} else
		right = left;
	FUNC4(&chip->reg_lock, flags);
	ucontrol->value.integer.value[0] = (left >> shift_left) & mask;
	ucontrol->value.integer.value[1] = (right >> shift_right) & mask;
	if (invert) {
		ucontrol->value.integer.value[0] = mask - ucontrol->value.integer.value[0];
		ucontrol->value.integer.value[1] = mask - ucontrol->value.integer.value[1];
	}
	return 0;
}