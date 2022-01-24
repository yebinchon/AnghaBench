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
struct snd_pmac {int* awacs_reg; int /*<<< orphan*/  reg_lock; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int MASK_GAINLINE ; 
 int MASK_MIC_BOOST ; 
 struct snd_pmac* FUNC0 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
					   struct snd_ctl_elem_value *ucontrol)
{
	struct snd_pmac *chip = FUNC0(kcontrol);
	int val = 0;
	unsigned long flags;

	FUNC1(&chip->reg_lock, flags);
	if (chip->awacs_reg[6] & MASK_MIC_BOOST)
		val |= 2;
	if (chip->awacs_reg[0] & MASK_GAINLINE)
		val |= 1;
	FUNC2(&chip->reg_lock, flags);
	ucontrol->value.integer.value[0] = val;
	return 0;
}