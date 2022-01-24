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
typedef  int u32 ;
struct snd_kcontrol {int private_value; struct oxygen* private_data; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct oxygen {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  OXYGEN_SPDIF_CONTROL ; 
 int FUNC0 (struct oxygen*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct oxygen*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *ctl,
				struct snd_ctl_elem_value *value)
{
	struct oxygen *chip = ctl->private_data;
	u32 bit = ctl->private_value;
	u32 oldreg, newreg;
	int changed;

	FUNC2(&chip->reg_lock);
	oldreg = FUNC0(chip, OXYGEN_SPDIF_CONTROL);
	if (value->value.integer.value[0])
		newreg = oldreg | bit;
	else
		newreg = oldreg & ~bit;
	changed = newreg != oldreg;
	if (changed)
		FUNC1(chip, OXYGEN_SPDIF_CONTROL, newreg);
	FUNC3(&chip->reg_lock);
	return changed;
}