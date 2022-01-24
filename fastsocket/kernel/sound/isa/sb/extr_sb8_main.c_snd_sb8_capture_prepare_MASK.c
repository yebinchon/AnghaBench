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
struct snd_sb {int hardware; scalar_t__ capture_format; unsigned int c_dma_size; unsigned int c_period_size; unsigned int force_mode16; int /*<<< orphan*/  dma8; int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  mixer_lock; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {unsigned int rate; int channels; int rate_den; int /*<<< orphan*/  dma_addr; } ;

/* Variables and functions */
 int DMA_AUTOINIT ; 
 int DMA_MODE_READ ; 
 int EINVAL ; 
 unsigned int FUNC0 (int) ; 
 unsigned int SB_DSP_BLOCK_SIZE ; 
 int /*<<< orphan*/  SB_DSP_CAPTURE_FILT ; 
 void* SB_DSP_HI_INPUT_AUTO ; 
 scalar_t__ SB_DSP_INPUT ; 
 void* SB_DSP_LO_INPUT_AUTO ; 
 unsigned int SB_DSP_SAMPLE_RATE ; 
 unsigned int SB_DSP_SPEAKER_OFF ; 
 unsigned int SB_DSP_STEREO_8BIT ; 
#define  SB_HW_10 131 
#define  SB_HW_20 130 
#define  SB_HW_201 129 
#define  SB_HW_PRO 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int) ; 
 unsigned int FUNC3 (struct snd_pcm_substream*) ; 
 unsigned int FUNC4 (struct snd_pcm_substream*) ; 
 struct snd_sb* FUNC5 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_sb*,unsigned int) ; 
 unsigned int FUNC7 (struct snd_sb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_sb*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC13(struct snd_pcm_substream *substream)
{
	unsigned long flags;
	struct snd_sb *chip = FUNC5(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	unsigned int mixreg, rate, size, count;

	rate = runtime->rate;
	switch (chip->hardware) {
	case SB_HW_PRO:
		if (runtime->channels > 1) {
			if (FUNC1(rate != FUNC0(11025) &&
				       rate != FUNC0(22050)))
				return -EINVAL;
			chip->capture_format = SB_DSP_HI_INPUT_AUTO;
			break;
		}
		chip->capture_format = (rate > 23000) ? SB_DSP_HI_INPUT_AUTO : SB_DSP_LO_INPUT_AUTO;
		break;
	case SB_HW_201:
		if (rate > 13000) {
			chip->capture_format = SB_DSP_HI_INPUT_AUTO;
			break;
		}
		/* fallthru */
	case SB_HW_20:
		chip->capture_format = SB_DSP_LO_INPUT_AUTO;
		break;
	case SB_HW_10:
		chip->capture_format = SB_DSP_INPUT;
		break;
	default:
		return -EINVAL;
	}
	size = chip->c_dma_size = FUNC3(substream);
	count = chip->c_period_size = FUNC4(substream);
	FUNC10(&chip->reg_lock, flags);
	FUNC6(chip, SB_DSP_SPEAKER_OFF);
	if (runtime->channels > 1)
		FUNC6(chip, SB_DSP_STEREO_8BIT);
	FUNC6(chip, SB_DSP_SAMPLE_RATE);
	if (runtime->channels > 1) {
		FUNC6(chip, 256 - runtime->rate_den / 2);
		FUNC9(&chip->mixer_lock);
		/* save input filter status and turn it off */
		mixreg = FUNC7(chip, SB_DSP_CAPTURE_FILT);
		FUNC8(chip, SB_DSP_CAPTURE_FILT, mixreg | 0x20);
		FUNC11(&chip->mixer_lock);
		/* just use force_mode16 for temporary storate... */
		chip->force_mode16 = mixreg;
	} else {
		FUNC6(chip, 256 - runtime->rate_den);
	}
	if (chip->capture_format != SB_DSP_INPUT) {
		count--;
		FUNC6(chip, SB_DSP_BLOCK_SIZE);
		FUNC6(chip, count & 0xff);
		FUNC6(chip, count >> 8);
	}
	FUNC12(&chip->reg_lock, flags);
	FUNC2(chip->dma8, runtime->dma_addr,
			size, DMA_MODE_READ | DMA_AUTOINIT);
	return 0;
}