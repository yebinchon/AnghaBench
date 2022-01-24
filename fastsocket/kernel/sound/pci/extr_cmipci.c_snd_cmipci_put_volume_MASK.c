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
struct snd_kcontrol {int /*<<< orphan*/  private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct cmipci_sb_reg {int mask; int left_shift; int right_shift; scalar_t__ left_reg; scalar_t__ right_reg; scalar_t__ stereo; scalar_t__ invert; } ;
struct cmipci {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cmipci_sb_reg*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct cmipci*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct cmipci*,scalar_t__,int) ; 
 struct cmipci* FUNC3 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct snd_kcontrol *kcontrol,
				 struct snd_ctl_elem_value *ucontrol)
{
	struct cmipci *cm = FUNC3(kcontrol);
	struct cmipci_sb_reg reg;
	int change;
	int left, right, oleft, oright;

	FUNC0(&reg, kcontrol->private_value);
	left = ucontrol->value.integer.value[0] & reg.mask;
	if (reg.invert)
		left = reg.mask - left;
	left <<= reg.left_shift;
	if (reg.stereo) {
		right = ucontrol->value.integer.value[1] & reg.mask;
		if (reg.invert)
			right = reg.mask - right;
		right <<= reg.right_shift;
	} else
		right = 0;
	FUNC4(&cm->reg_lock);
	oleft = FUNC1(cm, reg.left_reg);
	left |= oleft & ~(reg.mask << reg.left_shift);
	change = left != oleft;
	if (reg.stereo) {
		if (reg.left_reg != reg.right_reg) {
			FUNC2(cm, reg.left_reg, left);
			oright = FUNC1(cm, reg.right_reg);
		} else
			oright = left;
		right |= oright & ~(reg.mask << reg.right_shift);
		change |= right != oright;
		FUNC2(cm, reg.right_reg, right);
	} else
		FUNC2(cm, reg.left_reg, left);
	FUNC5(&cm->reg_lock);
	return change;
}