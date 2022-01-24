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
struct snd_soc_codec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TWL4030_MODULE_AUDIO_VOICE ; 
 unsigned int TWL4030_REG_SW_SHADOW ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_codec*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_codec *codec,
			unsigned int reg, unsigned int value)
{
	FUNC2(codec, reg, value);
	if (FUNC0(reg < TWL4030_REG_SW_SHADOW))
		return FUNC1(TWL4030_MODULE_AUDIO_VOICE, value,
					    reg);
	else
		return 0;
}