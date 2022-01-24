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
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_azf3328 {int dummy; } ;
struct azf3328_mixer_reg {int mask; int lchan_shift; int rchan_shift; int /*<<< orphan*/  reg; scalar_t__ invert; scalar_t__ stereo; } ;

/* Variables and functions */
 int SET_CHAN_LEFT ; 
 int SET_CHAN_RIGHT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int,int,int,int,int,int) ; 
 int FUNC3 (struct snd_azf3328*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_azf3328*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct azf3328_mixer_reg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_azf3328*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 struct snd_azf3328* FUNC7 (struct snd_kcontrol*) ; 

__attribute__((used)) static int
FUNC8(struct snd_kcontrol *kcontrol,
		      struct snd_ctl_elem_value *ucontrol)
{
	struct snd_azf3328 *chip = FUNC7(kcontrol);
	struct azf3328_mixer_reg reg;
	u16 oreg, nreg, val;

	FUNC0();
	FUNC5(&reg, kcontrol->private_value);
	oreg = FUNC3(chip, reg.reg);
	val = ucontrol->value.integer.value[0] & reg.mask;
	if (reg.invert)
		val = reg.mask - val;
	nreg = oreg & ~(reg.mask << reg.lchan_shift);
	nreg |= (val << reg.lchan_shift);
	if (reg.stereo) {
		val = ucontrol->value.integer.value[1] & reg.mask;
		if (reg.invert)
			val = reg.mask - val;
		nreg &= ~(reg.mask << reg.rchan_shift);
		nreg |= (val << reg.rchan_shift);
	}
	if (reg.mask >= 0x07) /* it's a volume control, so better take care */
		FUNC6(
			chip, reg.reg, nreg >> 8, nreg & 0xff,
			/* just set both channels, doesn't matter */
			SET_CHAN_LEFT|SET_CHAN_RIGHT,
			0);
	else
        	FUNC4(chip, reg.reg, nreg);

	FUNC2("put: %02x to %02lx|%02lx, "
			     "oreg %04x; shift %02d|%02d -> nreg %04x; after: %04x\n",
		reg.reg, ucontrol->value.integer.value[0], ucontrol->value.integer.value[1],
		oreg, reg.lchan_shift, reg.rchan_shift,
		nreg, FUNC3(chip, reg.reg));
	FUNC1();
	return (nreg != oreg);
}