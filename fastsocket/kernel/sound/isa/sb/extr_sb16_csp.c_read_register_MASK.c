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
struct snd_sb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_sb*,unsigned char*,int) ; 
 int FUNC1 (struct snd_sb*) ; 

__attribute__((used)) static int FUNC2(struct snd_sb *chip, unsigned char reg)
{
	unsigned char dsp_cmd[2];

	dsp_cmd[0] = 0x0f;	/* CSP read register */
	dsp_cmd[1] = reg;	/* CSP Register */
	FUNC0(chip, dsp_cmd, 2);
	return FUNC1(chip);	/* Read DSP value */
}