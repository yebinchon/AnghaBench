#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {int /*<<< orphan*/  info; } ;
struct snd_pcm_runtime {TYPE_1__ hw; int /*<<< orphan*/  private_free; struct snd_cs46xx_pcm* private_data; } ;
struct snd_cs46xx_pcm {int pcm_channel_id; int /*<<< orphan*/ * pcm_channel; struct snd_pcm_substream* substream; int /*<<< orphan*/  hw_buf; } ;
struct snd_cs46xx {int /*<<< orphan*/  (* active_ctrl ) (struct snd_cs46xx*,int) ;scalar_t__ accept_valid; struct snd_cs46xx_pcm* playback_pcm; int /*<<< orphan*/  spos_mutex; int /*<<< orphan*/  pci; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIOD_BYTES ; 
 int /*<<< orphan*/  SNDRV_PCM_INFO_MMAP_VALID ; 
 int /*<<< orphan*/  hw_constraints_period_sizes ; 
 int /*<<< orphan*/  FUNC0 (struct snd_cs46xx_pcm*) ; 
 struct snd_cs46xx_pcm* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  snd_cs46xx_pcm_free_substream ; 
 TYPE_1__ snd_cs46xx_playback ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct snd_cs46xx* FUNC7 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_cs46xx*,int) ; 

__attribute__((used)) static int FUNC9 (struct snd_pcm_substream *substream,int pcm_channel_id)
{
	struct snd_cs46xx *chip = FUNC7(substream);
	struct snd_cs46xx_pcm * cpcm;
	struct snd_pcm_runtime *runtime = substream->runtime;

	cpcm = FUNC1(sizeof(*cpcm), GFP_KERNEL);
	if (cpcm == NULL)
		return -ENOMEM;
	if (FUNC4(SNDRV_DMA_TYPE_DEV, FUNC5(chip->pci),
				PAGE_SIZE, &cpcm->hw_buf) < 0) {
		FUNC0(cpcm);
		return -ENOMEM;
	}

	runtime->hw = snd_cs46xx_playback;
	runtime->private_data = cpcm;
	runtime->private_free = snd_cs46xx_pcm_free_substream;

	cpcm->substream = substream;
#ifdef CONFIG_SND_CS46XX_NEW_DSP
	mutex_lock(&chip->spos_mutex);
	cpcm->pcm_channel = NULL; 
	cpcm->pcm_channel_id = pcm_channel_id;


	snd_pcm_hw_constraint_list(runtime, 0,
				   SNDRV_PCM_HW_PARAM_PERIOD_BYTES, 
				   &hw_constraints_period_sizes);

	mutex_unlock(&chip->spos_mutex);
#else
	chip->playback_pcm = cpcm; /* HACK */
#endif

	if (chip->accept_valid)
		substream->runtime->hw.info |= SNDRV_PCM_INFO_MMAP_VALID;
	chip->active_ctrl(chip, 1);

	return 0;
}