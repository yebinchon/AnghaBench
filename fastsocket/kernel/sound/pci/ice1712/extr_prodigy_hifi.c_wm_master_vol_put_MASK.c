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
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct prodigy_hifi_spec {scalar_t__* master; int /*<<< orphan*/ * vol; } ;

/* Variables and functions */
 scalar_t__ WM8766_LDA1 ; 
 scalar_t__ WM8766_LDA2 ; 
 scalar_t__ WM8766_LDA3 ; 
 scalar_t__ WM_DAC_ATTEN_L ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct snd_ice1712* FUNC2 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ice1712*,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_ice1712*,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
			     struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ice1712 *ice = FUNC2(kcontrol);
	struct prodigy_hifi_spec *spec = ice->spec;
	int ch, change = 0;

	FUNC0(&ice->gpio_mutex);
	for (ch = 0; ch < 2; ch++) {
		if (ucontrol->value.integer.value[ch] != spec->master[ch]) {
			spec->master[ch] = ucontrol->value.integer.value[ch];

			/* Apply to front DAC */
			FUNC4(ice, WM_DAC_ATTEN_L + ch,
				   spec->vol[2 + ch], spec->master[ch]);

			FUNC3(ice, WM8766_LDA1 + ch,
				       spec->vol[0 + ch], spec->master[ch]);

			FUNC3(ice, WM8766_LDA2 + ch,
				       spec->vol[4 + ch], spec->master[ch]);

			FUNC3(ice, WM8766_LDA3 + ch,
				       spec->vol[6 + ch], spec->master[ch]);
			change = 1;
		}
	}
	FUNC1(&ice->gpio_mutex);	
	return change;
}