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
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct ct_mixer {int dummy; } ;
struct ct_atc {struct ct_mixer* mixer; } ;
typedef  enum CTALSA_MIXER_CTL { ____Placeholder_CTALSA_MIXER_CTL } CTALSA_MIXER_CTL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ct_atc*,int,int) ; 
 int FUNC1 (struct ct_mixer*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ct_mixer*,int,int) ; 
 struct ct_atc* FUNC3 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol,
				  struct snd_ctl_elem_value *ucontrol)
{
	struct ct_atc *atc = FUNC3(kcontrol);
	struct ct_mixer *mixer = atc->mixer;
	enum CTALSA_MIXER_CTL type = kcontrol->private_value;
	int state;

	state = ucontrol->value.integer.value[0];
	if (FUNC1(mixer, type) == state)
		return 0;

	FUNC2(mixer, type, state);
	FUNC0(atc, type, state);

	return 1;
}