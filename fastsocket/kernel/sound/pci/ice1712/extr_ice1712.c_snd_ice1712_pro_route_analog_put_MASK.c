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
struct snd_ice1712 {int /*<<< orphan*/  reg_lock; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ROUTE_CAPTURE ; 
 int /*<<< orphan*/  ROUTE_PSDOUT03 ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct snd_kcontrol*,int /*<<< orphan*/ *) ; 
 struct snd_ice1712* FUNC6 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct snd_kcontrol *kcontrol,
					    struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ice1712 *ice = FUNC6(kcontrol);
	int change, shift;
	int idx = FUNC5(kcontrol, &ucontrol->id);
	unsigned int val, old_val, nval;

	/* update PSDOUT */
	if (ucontrol->value.enumerated.item[0] >= 11)
		nval = idx < 2 ? 1 : 0; /* dig mixer (or pcm) */
	else if (ucontrol->value.enumerated.item[0] >= 9)
		nval = 3; /* spdif in */
	else if (ucontrol->value.enumerated.item[0] >= 1)
		nval = 2; /* analog in */
	else
		nval = 0; /* pcm */
	shift = ((idx % 2) * 8) + ((idx / 2) * 2);
	FUNC7(&ice->reg_lock);
	val = old_val = FUNC2(FUNC0(ice, ROUTE_PSDOUT03));
	val &= ~(0x03 << shift);
	val |= nval << shift;
	change = val != old_val;
	if (change)
		FUNC4(val, FUNC0(ice, ROUTE_PSDOUT03));
	FUNC8(&ice->reg_lock);
	if (nval < 2) /* dig mixer of pcm */
		return change;

	/* update CAPTURE */
	FUNC7(&ice->reg_lock);
	val = old_val = FUNC1(FUNC0(ice, ROUTE_CAPTURE));
	shift = ((idx / 2) * 8) + ((idx % 2) * 4);
	if (nval == 2) { /* analog in */
		nval = ucontrol->value.enumerated.item[0] - 1;
		val &= ~(0x07 << shift);
		val |= nval << shift;
	} else { /* spdif in */
		nval = (ucontrol->value.enumerated.item[0] - 9) << 3;
		val &= ~(0x08 << shift);
		val |= nval << shift;
	}
	if (val != old_val) {
		change = 1;
		FUNC3(val, FUNC0(ice, ROUTE_CAPTURE));
	}
	FUNC8(&ice->reg_lock);
	return change;
}