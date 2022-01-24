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
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int EINVAL ; 
#define  YDSXGR_SPDIFINCTRL 129 
#define  YDSXGR_SPDIFOUTCTRL 128 
 struct snd_ymfpci* FUNC0 (struct snd_kcontrol*) ; 
 unsigned int FUNC1 (struct snd_ymfpci*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ymfpci*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
				 struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ymfpci *chip = FUNC0(kcontrol);
	int reg = kcontrol->private_value & 0xffff;
	unsigned int shift = (kcontrol->private_value >> 16) & 0xff;
 	unsigned int mask = 1;
	int change;
	unsigned int val, oval;
	
	switch (reg) {
	case YDSXGR_SPDIFOUTCTRL: break;
	case YDSXGR_SPDIFINCTRL: break;
	default: return -EINVAL;
	}
	val = (ucontrol->value.integer.value[0] & mask);
	val <<= shift;
	FUNC3(&chip->reg_lock);
	oval = FUNC1(chip, reg);
	val = (oval & ~(mask << shift)) | val;
	change = val != oval;
	FUNC2(chip, reg, val);
	FUNC4(&chip->reg_lock);
	return change;
}