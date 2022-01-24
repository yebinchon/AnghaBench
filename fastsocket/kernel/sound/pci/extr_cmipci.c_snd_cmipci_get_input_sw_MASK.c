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
 struct cmipci* FUNC2 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
				   struct snd_ctl_elem_value *ucontrol)
{
	struct cmipci *cm = FUNC2(kcontrol);
	struct cmipci_sb_reg reg;
	int val1, val2;

	FUNC0(&reg, kcontrol->private_value);
	FUNC3(&cm->reg_lock);
	val1 = FUNC1(cm, reg.left_reg);
	val2 = FUNC1(cm, reg.right_reg);
	FUNC4(&cm->reg_lock);
	ucontrol->value.integer.value[0] = (val1 >> reg.left_shift) & 1;
	ucontrol->value.integer.value[1] = (val2 >> reg.left_shift) & 1;
	ucontrol->value.integer.value[2] = (val1 >> reg.right_shift) & 1;
	ucontrol->value.integer.value[3] = (val2 >> reg.right_shift) & 1;
	return 0;
}