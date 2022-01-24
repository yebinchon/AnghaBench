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
struct snd_ice1712 {int /*<<< orphan*/  gpio_mutex; } ;
struct TYPE_3__ {unsigned short* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int WM_ADC_GAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct snd_ice1712* FUNC2 (struct snd_kcontrol*) ; 
 int FUNC3 (struct snd_ice1712*,int) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ice1712 *ice = FUNC2(kcontrol);
	int i, idx;
	unsigned short vol;

	FUNC0(&ice->gpio_mutex);
	for (i = 0; i < 2; i++) {
		idx = WM_ADC_GAIN + i;
		vol = FUNC3(ice, idx) & 0x1f;
		ucontrol->value.integer.value[i] = vol;
	}
	FUNC1(&ice->gpio_mutex);
	return 0;
}