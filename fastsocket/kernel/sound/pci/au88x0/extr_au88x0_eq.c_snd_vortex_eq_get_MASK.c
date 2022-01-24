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
typedef  int /*<<< orphan*/  vortex_t ;
typedef  void* u16 ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {void** value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,void**) ; 

__attribute__((used)) static int
FUNC3(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	vortex_t *vortex = FUNC0(kcontrol);
	int i = kcontrol->private_value;
	u16 gainL = 0, gainR = 0;

	FUNC1(vortex, i, &gainL);
	FUNC2(vortex, i, &gainR);
	ucontrol->value.integer.value[0] = gainL;
	ucontrol->value.integer.value[1] = gainR;
	return 0;
}