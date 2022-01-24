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
typedef  int u16 ;
struct snd_kcontrol {int /*<<< orphan*/  private_value; } ;
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_azf3328 {int dummy; } ;
struct azf3328_mixer_reg {scalar_t__ reg; unsigned int enum_c; int lchan_shift; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ IDX_MIXER_REC_SELECT ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int,int) ; 
 int FUNC1 (struct snd_azf3328*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_azf3328*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct azf3328_mixer_reg*,int /*<<< orphan*/ ) ; 
 struct snd_azf3328* FUNC4 (struct snd_kcontrol*) ; 

__attribute__((used)) static int
FUNC5(struct snd_kcontrol *kcontrol,
			   struct snd_ctl_elem_value *ucontrol)
{
        struct snd_azf3328 *chip = FUNC4(kcontrol);
	struct azf3328_mixer_reg reg;
	u16 oreg, nreg, val;

	FUNC3(&reg, kcontrol->private_value);
	oreg = FUNC1(chip, reg.reg);
	val = oreg;
	if (reg.reg == IDX_MIXER_REC_SELECT) {
        	if (ucontrol->value.enumerated.item[0] > reg.enum_c - 1U ||
            	ucontrol->value.enumerated.item[1] > reg.enum_c - 1U)
                	return -EINVAL;
        	val = (ucontrol->value.enumerated.item[0] << 8) |
        	      (ucontrol->value.enumerated.item[1] << 0);
	} else {
        	if (ucontrol->value.enumerated.item[0] > reg.enum_c - 1U)
                	return -EINVAL;
		val &= ~((reg.enum_c - 1) << reg.lchan_shift);
        	val |= (ucontrol->value.enumerated.item[0] << reg.lchan_shift);
	}
	FUNC2(chip, reg.reg, val);
	nreg = val;

	FUNC0("put_enum: %02x to %04x, oreg %04x\n", reg.reg, val, oreg);
	return (nreg != oreg);
}