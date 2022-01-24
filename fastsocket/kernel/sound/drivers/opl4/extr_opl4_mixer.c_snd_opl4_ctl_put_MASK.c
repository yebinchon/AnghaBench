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
typedef  int u8 ;
struct snd_opl4 {int /*<<< orphan*/  reg_lock; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 struct snd_opl4* FUNC0 (struct snd_kcontrol*) ; 
 int FUNC1 (struct snd_opl4*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_opl4*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_opl4 *opl4 = FUNC0(kcontrol);
	unsigned long flags;
	u8 reg = kcontrol->private_value;
	u8 value, old_value;

	value = (7 - (ucontrol->value.integer.value[0] & 7)) |
		((7 - (ucontrol->value.integer.value[1] & 7)) << 3);
	FUNC3(&opl4->reg_lock, flags);
	old_value = FUNC1(opl4, reg);
	FUNC2(opl4, reg, value);
	FUNC4(&opl4->reg_lock, flags);
	return value != old_value;
}