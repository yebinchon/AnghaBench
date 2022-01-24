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
struct snd_ice1712 {int /*<<< orphan*/  gpio_mutex; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

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
	int bit = kcontrol->private_value;
	unsigned short oval, nval;
	int change;

	FUNC0(&ice->gpio_mutex);
	nval = oval = FUNC3(ice, WM_ADC_MUX);
	if (ucontrol->value.integer.value[0])
		nval |= (1 << bit);
	else
		nval &= ~(1 << bit);
	change = nval != oval;
	if (change) {
		FUNC4(ice, WM_ADC_MUX, nval);
	}
	FUNC1(&ice->gpio_mutex);
	return 0;
}