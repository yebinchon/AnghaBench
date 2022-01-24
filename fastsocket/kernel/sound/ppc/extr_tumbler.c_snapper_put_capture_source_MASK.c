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
struct snd_pmac {struct pmac_tumbler* mixer_data; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct pmac_tumbler {scalar_t__ capture_source; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pmac_tumbler*) ; 
 struct snd_pmac* FUNC1 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC2(struct snd_kcontrol *kcontrol,
				      struct snd_ctl_elem_value *ucontrol)
{
	struct snd_pmac *chip = FUNC1(kcontrol);
	struct pmac_tumbler *mix = chip->mixer_data;
	int change;

	change = ucontrol->value.enumerated.item[0] != mix->capture_source;
	if (change) {
		mix->capture_source = !!ucontrol->value.enumerated.item[0];
		FUNC0(mix);
	}
	return change;
}