#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_kcontrol {int dummy; } ;
struct snd_ice1712 {unsigned int (* get_rate ) (struct snd_ice1712*) ;int /*<<< orphan*/  reg_lock; TYPE_1__* hw_rates; scalar_t__ (* is_spdif_master ) (struct snd_ice1712*) ;} ;
struct TYPE_5__ {unsigned int* item; } ;
struct TYPE_6__ {TYPE_2__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;
struct TYPE_4__ {unsigned int count; unsigned int* list; } ;

/* Variables and functions */
 struct snd_ice1712* FUNC0 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct snd_ice1712*) ; 
 unsigned int FUNC4 (struct snd_ice1712*) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
					     struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ice1712 *ice = FUNC0(kcontrol);
	unsigned int i, rate;

	FUNC1(&ice->reg_lock);
	if (ice->is_spdif_master(ice)) {
		ucontrol->value.enumerated.item[0] = ice->hw_rates->count;
	} else {
		rate = ice->get_rate(ice);
		ucontrol->value.enumerated.item[0] = 0;
		for (i = 0; i < ice->hw_rates->count; i++) {
			if (ice->hw_rates->list[i] == rate) {
				ucontrol->value.enumerated.item[0] = i;
				break;
			}
		}
	}
	FUNC2(&ice->reg_lock);
	return 0;
}