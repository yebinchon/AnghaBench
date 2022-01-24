#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct snd_rme9652 {int creg_spdif_stream; int control_register; int /*<<< orphan*/  lock; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  iec958; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;

/* Variables and functions */
 int RME9652_Dolby ; 
 int RME9652_EMP ; 
 int RME9652_PRO ; 
 int /*<<< orphan*/  RME9652_control_register ; 
 int /*<<< orphan*/  FUNC0 (struct snd_rme9652*,int /*<<< orphan*/ ,int) ; 
 struct snd_rme9652* FUNC1 (struct snd_kcontrol*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_rme9652 *rme9652 = FUNC1(kcontrol);
	int change;
	u32 val;
	
	val = FUNC2(&ucontrol->value.iec958);
	FUNC3(&rme9652->lock);
	change = val != rme9652->creg_spdif_stream;
	rme9652->creg_spdif_stream = val;
	rme9652->control_register &= ~(RME9652_PRO | RME9652_Dolby | RME9652_EMP);
	FUNC0(rme9652, RME9652_control_register, rme9652->control_register |= val);
	FUNC4(&rme9652->lock);
	return change;
}