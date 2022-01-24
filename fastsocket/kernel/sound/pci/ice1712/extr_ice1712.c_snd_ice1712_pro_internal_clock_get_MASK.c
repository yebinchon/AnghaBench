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
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RATE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct snd_ice1712* FUNC4 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct snd_kcontrol *kcontrol,
					      struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ice1712 *ice = FUNC4(kcontrol);
	static const unsigned char xlate[16] = {
		9, 6, 3, 1, 7, 4, 0, 12, 8, 5, 2, 11, 255, 255, 255, 10
	};
	unsigned char val;

	FUNC5(&ice->reg_lock);
	if (FUNC2(ice)) {
		ucontrol->value.enumerated.item[0] = 13;
	} else {
		val = xlate[FUNC1(FUNC0(ice, RATE)) & 15];
		if (val == 255) {
			FUNC3();
			val = 0;
		}
		ucontrol->value.enumerated.item[0] = val;
	}
	FUNC6(&ice->reg_lock);
	return 0;
}