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
struct snd_kcontrol {int private_value; } ;
struct snd_ice1712 {int dummy; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int EPERM ; 
 unsigned int FUNC0 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ice1712*) ; 
 struct snd_ice1712* FUNC4 (struct snd_kcontrol*) ; 

int FUNC5(struct snd_kcontrol *kcontrol,
			 struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ice1712 *ice = FUNC4(kcontrol);
	unsigned char mask = kcontrol->private_value & 0xff;
	int invert = (kcontrol->private_value & (1<<24)) ? mask : 0;
	unsigned int val, nval;

	if (kcontrol->private_value & (1 << 31))
		return -EPERM;
	nval = (ucontrol->value.integer.value[0] ? mask : 0) ^ invert;
	FUNC3(ice);
	val = FUNC0(ice);
	nval |= val & ~mask;
	if (val != nval)
		FUNC1(ice, nval);
	FUNC2(ice);
	return val != nval;
}