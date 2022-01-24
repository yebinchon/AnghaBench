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
struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_value {int dummy; } ;
struct cmipci {scalar_t__ mixer_insensitive; } ;

/* Variables and functions */
 int FUNC0 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ; 
 struct cmipci* FUNC1 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC2(struct snd_kcontrol *kcontrol,
						 struct snd_ctl_elem_value *ucontrol)
{
	struct cmipci *cm = FUNC1(kcontrol);
	if (cm->mixer_insensitive) {
		/* ignored */
		return 0;
	}
	return FUNC0(kcontrol, ucontrol);
}