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
struct snd_wss {int* eimage; int /*<<< orphan*/  reg_lock; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_wss*,int,unsigned short) ; 
 struct snd_wss* FUNC2 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_wss *chip = FUNC2(kcontrol);
	unsigned long flags;
	int left_reg = kcontrol->private_value & 0xff;
	int right_reg = (kcontrol->private_value >> 8) & 0xff;
	int shift_left = (kcontrol->private_value >> 16) & 0x07;
	int shift_right = (kcontrol->private_value >> 19) & 0x07;
	int mask = (kcontrol->private_value >> 24) & 0xff;
	int invert = (kcontrol->private_value >> 22) & 1;
	int change;
	unsigned short val1, val2;
	
	val1 = ucontrol->value.integer.value[0] & mask;
	val2 = ucontrol->value.integer.value[1] & mask;
	if (invert) {
		val1 = mask - val1;
		val2 = mask - val2;
	}
	val1 <<= shift_left;
	val2 <<= shift_right;
	FUNC3(&chip->reg_lock, flags);
	if (left_reg != right_reg) {
		val1 = (chip->eimage[FUNC0(left_reg)] & ~(mask << shift_left)) | val1;
		val2 = (chip->eimage[FUNC0(right_reg)] & ~(mask << shift_right)) | val2;
		change = val1 != chip->eimage[FUNC0(left_reg)] || val2 != chip->eimage[FUNC0(right_reg)];
		FUNC1(chip, left_reg, val1);
		FUNC1(chip, right_reg, val2);
	} else {
		val1 = (chip->eimage[FUNC0(left_reg)] & ~((mask << shift_left) | (mask << shift_right))) | val1 | val2;
		change = val1 != chip->eimage[FUNC0(left_reg)];
		FUNC1(chip, left_reg, val1);
	}
	FUNC4(&chip->reg_lock, flags);
	return change;
}