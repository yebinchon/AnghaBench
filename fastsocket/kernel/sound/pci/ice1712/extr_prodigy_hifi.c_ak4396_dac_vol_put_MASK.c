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
struct snd_ice1712 {int /*<<< orphan*/  gpio_mutex; struct prodigy_hifi_spec* spec; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct prodigy_hifi_spec {int* vol; } ;

/* Variables and functions */
 scalar_t__ AK4396_LCH_ATT ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct snd_ice1712* FUNC3 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ice1712 *ice = FUNC3(kcontrol);
	struct prodigy_hifi_spec *spec = ice->spec;
	int i;
	int change = 0;
	
	FUNC1(&ice->gpio_mutex);
	for (i = 0; i < 2; i++) {
		if (ucontrol->value.integer.value[i] != spec->vol[i]) {
			spec->vol[i] = ucontrol->value.integer.value[i];
			FUNC0(ice, AK4396_LCH_ATT + i,
				     spec->vol[i] & 0xff);
			change = 1;
		}
	}
	FUNC2(&ice->gpio_mutex);
	return change;
}