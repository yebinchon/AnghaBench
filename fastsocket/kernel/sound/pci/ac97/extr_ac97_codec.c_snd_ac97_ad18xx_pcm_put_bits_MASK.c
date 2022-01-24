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
struct snd_ac97 {int flags; } ;

/* Variables and functions */
 int AC97_STEREO_MUTES ; 
 int FUNC0 (struct snd_ac97*,int,unsigned short,unsigned short) ; 
 struct snd_ac97* FUNC1 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC2(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ac97 *ac97 = FUNC1(kcontrol);
	int codec = kcontrol->private_value & 3;
	int lshift = (kcontrol->private_value >> 8) & 0x0f;
	int rshift = (kcontrol->private_value >> 12) & 0x0f;
	int mask = (kcontrol->private_value >> 16) & 0xff;
	unsigned short val, valmask;
	
	val = (mask - (ucontrol->value.integer.value[0] & mask)) << lshift;
	valmask = mask << lshift;
	if (lshift != rshift && (ac97->flags & AC97_STEREO_MUTES)) {
		val |= (mask - (ucontrol->value.integer.value[1] & mask)) << rshift;
		valmask |= mask << rshift;
	}
	return FUNC0(ac97, codec, valmask, val);
}