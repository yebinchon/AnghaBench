#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct snd_kcontrol {unsigned long private_value; } ;
struct snd_ctl_elem_value {int dummy; } ;

/* Variables and functions */
 int AC97_HEADPHONE ; 
 int FUNC0 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ; 

__attribute__((used)) static int FUNC1(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	int err = FUNC0(kcontrol, ucontrol);
	if (err > 0) {
		unsigned long priv_saved = kcontrol->private_value;
		kcontrol->private_value = (kcontrol->private_value & ~0xff) | AC97_HEADPHONE;
		FUNC0(kcontrol, ucontrol);
		kcontrol->private_value = priv_saved;
	}
	return err;
}