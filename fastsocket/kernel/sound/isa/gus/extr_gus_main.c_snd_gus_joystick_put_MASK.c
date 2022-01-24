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
struct snd_gus_card {unsigned char joystick_dac; int /*<<< orphan*/  reg_lock; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_GF1_GB_JOYSTICK_DAC_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_gus_card*,int /*<<< orphan*/ ,unsigned char) ; 
 struct snd_gus_card* FUNC1 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_gus_card *gus = FUNC1(kcontrol);
	unsigned long flags;
	int change;
	unsigned char nval;
	
	nval = ucontrol->value.integer.value[0] & 31;
	FUNC2(&gus->reg_lock, flags);
	change = gus->joystick_dac != nval;
	gus->joystick_dac = nval;
	FUNC0(gus, SNDRV_GF1_GB_JOYSTICK_DAC_LEVEL, gus->joystick_dac);
	FUNC3(&gus->reg_lock, flags);
	return change;
}