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
typedef  int ushort ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_ac97 {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct snd_ac97*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ac97*,int,int) ; 
 struct snd_ac97* FUNC2 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
					struct snd_ctl_elem_value *ucontrol)
{
	ushort usSM51, usMS, usReg;  

	struct snd_ac97 *pac97;

	pac97 = FUNC2(kcontrol); /* grab codec handle */

	usSM51 = ucontrol->value.enumerated.item[0] >> 1;
	usMS   = ucontrol->value.enumerated.item[0] &  1;

	/* push our values into the register - consider that things will be left
	 * in a funky state if the write fails */

	usReg = FUNC0(pac97, 0x7a);
	FUNC1(pac97, 0x7a, (usReg & 0x3FFF) + (usSM51 << 14));
	usReg = FUNC0(pac97, 0x20);
	FUNC1(pac97, 0x20, (usReg & 0xFEFF) + (usMS   <<  8));

	return 0;
}