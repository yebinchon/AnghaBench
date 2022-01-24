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
struct cmipci_sb_reg {int left_shift; int right_shift; int /*<<< orphan*/  right_reg; int /*<<< orphan*/  left_reg; } ;
struct cmipci {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cmipci_sb_reg*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct cmipci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cmipci*,int /*<<< orphan*/ ,int) ; 
 struct cmipci* FUNC3 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct snd_kcontrol *kcontrol,
				   struct snd_ctl_elem_value *ucontrol)
{
	struct cmipci *cm = FUNC3(kcontrol);
	struct cmipci_sb_reg reg;
	int change;
	int val1, val2, oval1, oval2;

	FUNC0(&reg, kcontrol->private_value);
	FUNC4(&cm->reg_lock);
	oval1 = FUNC1(cm, reg.left_reg);
	oval2 = FUNC1(cm, reg.right_reg);
	val1 = oval1 & ~((1 << reg.left_shift) | (1 << reg.right_shift));
	val2 = oval2 & ~((1 << reg.left_shift) | (1 << reg.right_shift));
	val1 |= (ucontrol->value.integer.value[0] & 1) << reg.left_shift;
	val2 |= (ucontrol->value.integer.value[1] & 1) << reg.left_shift;
	val1 |= (ucontrol->value.integer.value[2] & 1) << reg.right_shift;
	val2 |= (ucontrol->value.integer.value[3] & 1) << reg.right_shift;
	change = val1 != oval1 || val2 != oval2;
	FUNC2(cm, reg.left_reg, val1);
	FUNC2(cm, reg.right_reg, val2);
	FUNC5(&cm->reg_lock);
	return change;
}