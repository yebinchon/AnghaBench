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
struct vx_core {scalar_t__* audio_active; int /*<<< orphan*/  mixer_mutex; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct vx_core* FUNC2 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC3 (struct vx_core*,int,int) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct vx_core *chip = FUNC2(kcontrol);
	int audio = kcontrol->private_value & 0xff;

	FUNC0(&chip->mixer_mutex);
	if (ucontrol->value.integer.value[0] != chip->audio_active[audio] ||
	    ucontrol->value.integer.value[1] != chip->audio_active[audio+1]) {
		FUNC3(chip, audio,
				    !!ucontrol->value.integer.value[0]);
		FUNC3(chip, audio+1,
				    !!ucontrol->value.integer.value[1]);
		FUNC1(&chip->mixer_mutex);
		return 1;
	}
	FUNC1(&chip->mixer_mutex);
	return 0;
}