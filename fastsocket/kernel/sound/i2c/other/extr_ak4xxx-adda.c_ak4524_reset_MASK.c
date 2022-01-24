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
struct snd_akm4xxx {scalar_t__ type; int num_dacs; } ;

/* Variables and functions */
 scalar_t__ SND_AK4528 ; 
 int FUNC0 (struct snd_akm4xxx*,unsigned int,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_akm4xxx*,unsigned int,unsigned char,int) ; 

__attribute__((used)) static void FUNC2(struct snd_akm4xxx *ak, int state)
{
	unsigned int chip;
	unsigned char reg, maxreg;

	if (ak->type == SND_AK4528)
		maxreg = 0x06;
	else
		maxreg = 0x08;
	for (chip = 0; chip < ak->num_dacs/2; chip++) {
		FUNC1(ak, chip, 0x01, state ? 0x00 : 0x03);
		if (state)
			continue;
		/* DAC volumes */
		for (reg = 0x04; reg < maxreg; reg++)
			FUNC1(ak, chip, reg,
					  FUNC0(ak, chip, reg));
	}
}