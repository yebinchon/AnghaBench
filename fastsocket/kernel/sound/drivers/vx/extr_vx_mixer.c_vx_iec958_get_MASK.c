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
struct vx_core {int uer_bits; int /*<<< orphan*/  mixer_mutex; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* status; } ;
struct TYPE_4__ {TYPE_1__ iec958; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct vx_core* FUNC2 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct vx_core *chip = FUNC2(kcontrol);

	FUNC0(&chip->mixer_mutex);
	ucontrol->value.iec958.status[0] = (chip->uer_bits >> 0) & 0xff;
	ucontrol->value.iec958.status[1] = (chip->uer_bits >> 8) & 0xff;
	ucontrol->value.iec958.status[2] = (chip->uer_bits >> 16) & 0xff;
	ucontrol->value.iec958.status[3] = (chip->uer_bits >> 24) & 0xff;
	FUNC1(&chip->mixer_mutex);
        return 0;
}