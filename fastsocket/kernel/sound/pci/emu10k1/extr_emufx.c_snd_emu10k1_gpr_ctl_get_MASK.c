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
struct snd_kcontrol {scalar_t__ private_value; } ;
struct snd_emu10k1_fx8010_ctl {unsigned int vcount; int /*<<< orphan*/ * value; } ;
struct snd_emu10k1 {int /*<<< orphan*/  reg_lock; } ;
struct TYPE_3__ {int /*<<< orphan*/ * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 struct snd_emu10k1* FUNC0 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_emu10k1 *emu = FUNC0(kcontrol);
	struct snd_emu10k1_fx8010_ctl *ctl =
		(struct snd_emu10k1_fx8010_ctl *) kcontrol->private_value;
	unsigned long flags;
	unsigned int i;
	
	FUNC1(&emu->reg_lock, flags);
	for (i = 0; i < ctl->vcount; i++)
		ucontrol->value.integer.value[i] = ctl->value[i];
	FUNC2(&emu->reg_lock, flags);
	return 0;
}