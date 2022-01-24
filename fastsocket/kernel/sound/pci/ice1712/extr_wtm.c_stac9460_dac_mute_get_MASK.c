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
struct snd_ice1712 {int dummy; } ;
struct TYPE_3__ {unsigned char* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int STAC946X_LF_VOLUME ; 
 int STAC946X_MASTER_VOLUME ; 
 int FUNC0 (struct snd_kcontrol*,int /*<<< orphan*/ *) ; 
 struct snd_ice1712* FUNC1 (struct snd_kcontrol*) ; 
 unsigned char FUNC2 (struct snd_ice1712*,int) ; 
 unsigned char FUNC3 (struct snd_ice1712*,int) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol,
				struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ice1712 *ice = FUNC1(kcontrol);
	unsigned char val;
	int idx, id;

	if (kcontrol->private_value) {
		idx = STAC946X_MASTER_VOLUME;
		id = 0;
	} else {
		id = FUNC0(kcontrol, &ucontrol->id);
		idx = id + STAC946X_LF_VOLUME;
	}
	if (id < 6)
		val = FUNC3(ice, idx);
	else
		val = FUNC2(ice, idx - 6);
	ucontrol->value.integer.value[0] = (~val >> 7) & 0x1;
	return 0;
}