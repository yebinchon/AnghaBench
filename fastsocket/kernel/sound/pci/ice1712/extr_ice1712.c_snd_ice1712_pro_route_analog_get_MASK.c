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
 int FUNC3 (struct snd_kcontrol*,int /*<<< orphan*/ *) ; 
 struct snd_ice1712* FUNC4 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct snd_kcontrol *kcontrol,
					    struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ice1712 *ice = FUNC4(kcontrol);
	int idx = FUNC3(kcontrol, &ucontrol->id);
	unsigned int val, cval;

	FUNC5(&ice->reg_lock);
	val = FUNC2(FUNC0(ice, ROUTE_PSDOUT03));
	cval = FUNC1(FUNC0(ice, ROUTE_CAPTURE));
	FUNC6(&ice->reg_lock);

	val >>= ((idx % 2) * 8) + ((idx / 2) * 2);
	val &= 3;
	cval >>= ((idx / 2) * 8) + ((idx % 2) * 4);
	if (val == 1 && idx < 2)
		ucontrol->value.enumerated.item[0] = 11;
	else if (val == 2)
		ucontrol->value.enumerated.item[0] = (cval & 7) + 1;
	else if (val == 3)
		ucontrol->value.enumerated.item[0] = ((cval >> 3) & 1) + 9;
	else
		ucontrol->value.enumerated.item[0] = 0;
	return 0;
}