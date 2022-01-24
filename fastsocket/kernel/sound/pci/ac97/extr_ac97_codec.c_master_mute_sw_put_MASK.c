#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct snd_kcontrol {int private_value; } ;
struct snd_ctl_elem_value {int dummy; } ;
struct snd_ac97 {unsigned short* regs; } ;

/* Variables and functions */
 size_t AC97_MASTER ; 
 int /*<<< orphan*/  AC97_POWERDOWN ; 
 int FUNC0 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ac97*,int /*<<< orphan*/ ,int,int) ; 
 struct snd_ac97* FUNC2 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	int err = FUNC0(kcontrol, ucontrol);
	if (err > 0) {
		struct snd_ac97 *ac97 = FUNC2(kcontrol);
		int shift = (kcontrol->private_value >> 8) & 0x0f;
		int rshift = (kcontrol->private_value >> 12) & 0x0f;
		unsigned short mask;
		if (shift != rshift)
			mask = 0x8080;
		else
			mask = 0x8000;
		FUNC1(ac97, AC97_POWERDOWN, 0x8000,
				     (ac97->regs[AC97_MASTER] & mask) == mask ?
				     0x8000 : 0);
	}
	return err;
}