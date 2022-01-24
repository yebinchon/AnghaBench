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
struct viadev {int dummy; } ;
struct via82xx {scalar_t__ revision; int /*<<< orphan*/  ac97; int /*<<< orphan*/ * rates; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {scalar_t__ format; int channels; int /*<<< orphan*/  rate; struct viadev* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_PCM_FRONT_DAC_RATE ; 
 int /*<<< orphan*/  AC97_PCM_LFE_DAC_RATE ; 
 int /*<<< orphan*/  AC97_PCM_SURR_DAC_RATE ; 
 int /*<<< orphan*/  AC97_SPDIF ; 
 int EINVAL ; 
 int /*<<< orphan*/  OFFSET_STOP_IDX ; 
 int /*<<< orphan*/  OFS_MULTPLAY_FORMAT ; 
 scalar_t__ SNDRV_PCM_FORMAT_S16_LE ; 
 int /*<<< orphan*/  FUNC0 (struct viadev*,int /*<<< orphan*/ ) ; 
 int VIA_REG_MULTPLAY_FMT_16BIT ; 
 int VIA_REG_MULTPLAY_FMT_8BIT ; 
 scalar_t__ VIA_REV_8233A ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct via82xx* FUNC4 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC5 (struct via82xx*,struct viadev*) ; 
 int /*<<< orphan*/  FUNC6 (struct via82xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct via82xx*,struct viadev*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct snd_pcm_substream *substream)
{
	struct via82xx *chip = FUNC4(substream);
	struct viadev *viadev = substream->runtime->private_data;
	struct snd_pcm_runtime *runtime = substream->runtime;
	unsigned int slots;
	int fmt;

	if (FUNC9(&chip->rates[0], runtime->rate) < 0)
		return -EINVAL;
	FUNC3(chip->ac97, AC97_PCM_FRONT_DAC_RATE, runtime->rate);
	FUNC3(chip->ac97, AC97_PCM_SURR_DAC_RATE, runtime->rate);
	FUNC3(chip->ac97, AC97_PCM_LFE_DAC_RATE, runtime->rate);
	FUNC3(chip->ac97, AC97_SPDIF, runtime->rate);
	FUNC5(chip, viadev);
	FUNC7(chip, viadev);

	fmt = (runtime->format == SNDRV_PCM_FORMAT_S16_LE) ?
		VIA_REG_MULTPLAY_FMT_16BIT : VIA_REG_MULTPLAY_FMT_8BIT;
	fmt |= runtime->channels << 4;
	FUNC1(fmt, FUNC0(viadev, OFS_MULTPLAY_FORMAT));
#if 0
	if (chip->revision == VIA_REV_8233A)
		slots = 0;
	else
#endif
	{
		/* set sample number to slot 3, 4, 7, 8, 6, 9 (for VIA8233/C,8235) */
		/* corresponding to FL, FR, RL, RR, C, LFE ?? */
		switch (runtime->channels) {
		case 1: slots = (1<<0) | (1<<4); break;
		case 2: slots = (1<<0) | (2<<4); break;
		case 3: slots = (1<<0) | (2<<4) | (5<<8); break;
		case 4: slots = (1<<0) | (2<<4) | (3<<8) | (4<<12); break;
		case 5: slots = (1<<0) | (2<<4) | (3<<8) | (4<<12) | (5<<16); break;
		case 6: slots = (1<<0) | (2<<4) | (3<<8) | (4<<12) | (5<<16) | (6<<20); break;
		default: slots = 0; break;
		}
	}
	/* STOP index is never reached */
	FUNC2(0xff000000 | slots, FUNC0(viadev, OFFSET_STOP_IDX));
	FUNC8(20);
	FUNC6(chip, 0);
	return 0;
}