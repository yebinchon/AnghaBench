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
struct TYPE_3__ {scalar_t__* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct control_runtime {scalar_t__ opt_coax_switch; } ;

/* Variables and functions */
 struct control_runtime* FUNC0 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC1 (struct control_runtime*) ; 

__attribute__((used)) static int FUNC2(struct snd_kcontrol *kcontrol,
		struct snd_ctl_elem_value *ucontrol)
{
	struct control_runtime *rt = FUNC0(kcontrol);
	int changed = 0;

	if (rt->opt_coax_switch != ucontrol->value.enumerated.item[0]) {
		rt->opt_coax_switch = ucontrol->value.enumerated.item[0];
		FUNC1(rt);
		changed = 1;
	}
	return changed;
}