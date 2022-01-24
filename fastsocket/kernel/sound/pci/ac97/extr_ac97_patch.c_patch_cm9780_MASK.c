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
struct snd_ac97 {int ext_id; int /*<<< orphan*/ * rates; int /*<<< orphan*/ * build_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_CM9780_SPDIF ; 
 int AC97_EI_SPDIF ; 
 size_t AC97_RATES_SPDIF ; 
 int /*<<< orphan*/  SNDRV_PCM_RATE_48000 ; 
 int /*<<< orphan*/  patch_cm9780_ops ; 
 unsigned short FUNC0 (struct snd_ac97*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ac97*,int /*<<< orphan*/ ,unsigned short) ; 

__attribute__((used)) static int FUNC2(struct snd_ac97 *ac97)
{
	unsigned short val;

	ac97->build_ops = &patch_cm9780_ops;

	/* enable spdif */
	if (ac97->ext_id & AC97_EI_SPDIF) {
		ac97->rates[AC97_RATES_SPDIF] = SNDRV_PCM_RATE_48000; /* 48k only */
		val = FUNC0(ac97, AC97_CM9780_SPDIF);
		val |= 0x1; /* SPDI_EN */
		FUNC1(ac97, AC97_CM9780_SPDIF, val);
	}

	return 0;
}