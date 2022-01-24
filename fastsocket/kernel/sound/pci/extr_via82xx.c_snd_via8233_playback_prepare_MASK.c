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
typedef  int u32 ;
struct viadev {int reg_offset; } ;
struct via82xx {int /*<<< orphan*/ ** playback_volume; int /*<<< orphan*/  ac97; scalar_t__ spdif_on; scalar_t__ no_vra; int /*<<< orphan*/ * rates; scalar_t__ dxs_src; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int rate; scalar_t__ format; int channels; struct viadev* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_PCM_FRONT_DAC_RATE ; 
 int /*<<< orphan*/  AC97_SPDIF ; 
 int /*<<< orphan*/  OFFSET_STOP_IDX ; 
 int /*<<< orphan*/  OFS_PLAYBACK_VOLUME_L ; 
 int /*<<< orphan*/  OFS_PLAYBACK_VOLUME_R ; 
 scalar_t__ SNDRV_PCM_FORMAT_S16_LE ; 
 int VIA8233_REG_TYPE_16BIT ; 
 int VIA8233_REG_TYPE_STEREO ; 
 int /*<<< orphan*/  FUNC0 (struct viadev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct via82xx* FUNC5 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC6 (struct via82xx*,struct viadev*) ; 
 int /*<<< orphan*/  FUNC7 (struct via82xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct via82xx*,struct viadev*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC11(struct snd_pcm_substream *substream)
{
	struct via82xx *chip = FUNC5(substream);
	struct viadev *viadev = substream->runtime->private_data;
	struct snd_pcm_runtime *runtime = substream->runtime;
	int ac97_rate = chip->dxs_src ? 48000 : runtime->rate;
	int rate_changed;
	u32 rbits;

	if ((rate_changed = FUNC10(&chip->rates[0], ac97_rate)) < 0)
		return rate_changed;
	if (rate_changed)
		FUNC4(chip->ac97, AC97_PCM_FRONT_DAC_RATE,
				  chip->no_vra ? 48000 : runtime->rate);
	if (chip->spdif_on && viadev->reg_offset == 0x30)
		FUNC4(chip->ac97, AC97_SPDIF, runtime->rate);

	if (runtime->rate == 48000)
		rbits = 0xfffff;
	else
		rbits = (0x100000 / 48000) * runtime->rate +
			((0x100000 % 48000) * runtime->rate) / 48000;
	FUNC3(rbits & ~0xfffff);
	FUNC6(chip, viadev);
	FUNC8(chip, viadev);
	FUNC1(chip->playback_volume[viadev->reg_offset / 0x10][0],
	     FUNC0(viadev, OFS_PLAYBACK_VOLUME_L));
	FUNC1(chip->playback_volume[viadev->reg_offset / 0x10][1],
	     FUNC0(viadev, OFS_PLAYBACK_VOLUME_R));
	FUNC2((runtime->format == SNDRV_PCM_FORMAT_S16_LE ? VIA8233_REG_TYPE_16BIT : 0) | /* format */
	     (runtime->channels > 1 ? VIA8233_REG_TYPE_STEREO : 0) | /* stereo */
	     rbits | /* rate */
	     0xff000000,    /* STOP index is never reached */
	     FUNC0(viadev, OFFSET_STOP_IDX));
	FUNC9(20);
	FUNC7(chip, 0);
	return 0;
}