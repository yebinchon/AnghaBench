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
struct via82xx {int /*<<< orphan*/  ac97; int /*<<< orphan*/ * rates; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {scalar_t__ format; int channels; int /*<<< orphan*/  rate; struct viadev* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_PCM_LR_ADC_RATE ; 
 int EINVAL ; 
 int /*<<< orphan*/  OFFSET_STOP_IDX ; 
 int /*<<< orphan*/  OFS_CAPTURE_FIFO ; 
 scalar_t__ SNDRV_PCM_FORMAT_S16_LE ; 
 int VIA8233_REG_TYPE_16BIT ; 
 int VIA8233_REG_TYPE_STEREO ; 
 int /*<<< orphan*/  FUNC0 (struct viadev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VIA_REG_CAPTURE_FIFO_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
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

	if (FUNC9(&chip->rates[1], runtime->rate) < 0)
		return -EINVAL;
	FUNC3(chip->ac97, AC97_PCM_LR_ADC_RATE, runtime->rate);
	FUNC5(chip, viadev);
	FUNC7(chip, viadev);
	FUNC1(VIA_REG_CAPTURE_FIFO_ENABLE, FUNC0(viadev, OFS_CAPTURE_FIFO));
	FUNC2((runtime->format == SNDRV_PCM_FORMAT_S16_LE ? VIA8233_REG_TYPE_16BIT : 0) |
	     (runtime->channels > 1 ? VIA8233_REG_TYPE_STEREO : 0) |
	     0xff000000,    /* STOP index is never reached */
	     FUNC0(viadev, OFFSET_STOP_IDX));
	FUNC8(20);
	FUNC6(chip, 0);
	return 0;
}