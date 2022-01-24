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
struct snd_ice1712 {int dummy; } ;
struct TYPE_3__ {scalar_t__* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 unsigned char AK4114_IPS0 ; 
 int /*<<< orphan*/  AK4114_REG_IO1 ; 
 unsigned char FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*,int /*<<< orphan*/ ,unsigned char) ; 
 struct snd_ice1712* FUNC2 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
	       		struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ice1712 *ice = FUNC2(kcontrol);
	unsigned char new, old, itemvalue;
	int change;

	old = FUNC0(ice, AK4114_REG_IO1);
	/* AK4114_IPS0 could be any bit */
	itemvalue = (ucontrol->value.enumerated.item[0]) ? 0xff : 0x00;

	new = (itemvalue & AK4114_IPS0) | (old & ~AK4114_IPS0);
	change = (new != old);
	if (change)
		FUNC1(ice, AK4114_REG_IO1, new);
	return change;
}