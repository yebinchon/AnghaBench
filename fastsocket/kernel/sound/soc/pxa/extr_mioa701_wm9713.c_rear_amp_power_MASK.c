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
 int /*<<< orphan*/  AC97_GPIO_CFG ; 
 int /*<<< orphan*/  AC97_GPIO_PULL ; 
 unsigned short FUNC0 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_codec*,int /*<<< orphan*/ ,unsigned short) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_codec *codec, int power)
{
	unsigned short reg;

	if (power) {
		reg = FUNC0(codec, AC97_GPIO_CFG);
		FUNC1(codec, AC97_GPIO_CFG, reg | 0x0100);
		reg = FUNC0(codec, AC97_GPIO_PULL);
		FUNC1(codec, AC97_GPIO_PULL, reg | (1<<15));
	} else {
		reg = FUNC0(codec, AC97_GPIO_CFG);
		FUNC1(codec, AC97_GPIO_CFG, reg & ~0x0100);
		reg = FUNC0(codec, AC97_GPIO_PULL);
		FUNC1(codec, AC97_GPIO_PULL, reg & ~(1<<15));
	}

	return 0;
}