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
struct snd_kcontrol {int dummy; } ;
struct snd_emu10k1 {unsigned int* spdif_bits; int /*<<< orphan*/  reg_lock; } ;
struct TYPE_3__ {int* status; } ;
struct TYPE_4__ {TYPE_1__ iec958; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ SPCS0 ; 
 unsigned int FUNC0 (struct snd_kcontrol*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emu10k1*,scalar_t__,int /*<<< orphan*/ ,unsigned int) ; 
 struct snd_emu10k1* FUNC2 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
                                 struct snd_ctl_elem_value *ucontrol)
{
	struct snd_emu10k1 *emu = FUNC2(kcontrol);
	unsigned int idx = FUNC0(kcontrol, &ucontrol->id);
	int change;
	unsigned int val;
	unsigned long flags;

	/* Limit: emu->spdif_bits */
	if (idx >= 3)
		return -EINVAL;
	val = (ucontrol->value.iec958.status[0] << 0) |
	      (ucontrol->value.iec958.status[1] << 8) |
	      (ucontrol->value.iec958.status[2] << 16) |
	      (ucontrol->value.iec958.status[3] << 24);
	FUNC3(&emu->reg_lock, flags);
	change = val != emu->spdif_bits[idx];
	if (change) {
		FUNC1(emu, SPCS0 + idx, 0, val);
		emu->spdif_bits[idx] = val;
	}
	FUNC4(&emu->reg_lock, flags);
	return change;
}