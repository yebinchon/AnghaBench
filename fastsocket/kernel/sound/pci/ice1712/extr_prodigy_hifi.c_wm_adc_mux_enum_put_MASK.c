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
struct TYPE_4__ {unsigned short* value; } ;
struct TYPE_3__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM_ADC_MUX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct snd_ice1712* FUNC2 (struct snd_kcontrol*) ; 
 unsigned short FUNC3 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_ice1712*,int /*<<< orphan*/ ,unsigned short) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
			       struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ice1712 *ice = FUNC2(kcontrol);
	unsigned short oval, nval;
	int change = 0;

	FUNC0(&ice->gpio_mutex);
	oval = FUNC3(ice, WM_ADC_MUX);
	nval = (oval & 0xe0) | ucontrol->value.integer.value[0];
	if (nval != oval) {
		FUNC4(ice, WM_ADC_MUX, nval);
		change = 1;
	}
	FUNC1(&ice->gpio_mutex);
	return change;
}