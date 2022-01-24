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
struct snd_kcontrol {int /*<<< orphan*/  private_value; } ;
struct TYPE_3__ {void** value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_akm4xxx {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct snd_akm4xxx*,int,int) ; 
 struct snd_akm4xxx* FUNC3 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol,
					 struct snd_ctl_elem_value *ucontrol)
{
	struct snd_akm4xxx *ak = FUNC3(kcontrol);
	int chip = FUNC1(kcontrol->private_value);
	int addr = FUNC0(kcontrol->private_value);

	ucontrol->value.integer.value[0] = FUNC2(ak, chip, addr);
	ucontrol->value.integer.value[1] = FUNC2(ak, chip, addr+1);
	return 0;
}