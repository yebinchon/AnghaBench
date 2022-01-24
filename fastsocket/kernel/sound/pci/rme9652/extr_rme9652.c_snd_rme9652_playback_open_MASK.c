#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_rme9652 {TYPE_2__* spdif_ctl; int /*<<< orphan*/  card; int /*<<< orphan*/  creg_spdif; int /*<<< orphan*/  creg_spdif_stream; int /*<<< orphan*/  lock; struct snd_pcm_substream* playback_substream; int /*<<< orphan*/  playback_pid; int /*<<< orphan*/ * capture_substream; int /*<<< orphan*/  playback_buffer; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int /*<<< orphan*/  dma_bytes; int /*<<< orphan*/  dma_area; int /*<<< orphan*/  hw; } ;
struct TYPE_6__ {int /*<<< orphan*/  pid; } ;
struct TYPE_5__ {int /*<<< orphan*/  id; TYPE_1__* vd; } ;
struct TYPE_4__ {int /*<<< orphan*/  access; } ;

/* Variables and functions */
 int /*<<< orphan*/  RME9652_DMA_AREA_BYTES ; 
 int /*<<< orphan*/  SNDRV_CTL_ELEM_ACCESS_INACTIVE ; 
 int SNDRV_CTL_EVENT_MASK_INFO ; 
 int SNDRV_CTL_EVENT_MASK_VALUE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIOD_SIZE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  hw_constraints_period_sizes ; 
 int /*<<< orphan*/  FUNC0 (struct snd_rme9652*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_rme9652*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snd_rme9652*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_pcm_substream*) ; 
 struct snd_rme9652* FUNC7 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  snd_rme9652_hw_rule_channels ; 
 int /*<<< orphan*/  snd_rme9652_hw_rule_channels_rate ; 
 int /*<<< orphan*/  snd_rme9652_hw_rule_rate_channels ; 
 int /*<<< orphan*/  snd_rme9652_playback_subinfo ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct snd_pcm_substream *substream)
{
	struct snd_rme9652 *rme9652 = FUNC7(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;

	FUNC8(&rme9652->lock);

	FUNC6(substream);

        runtime->hw = snd_rme9652_playback_subinfo;
	runtime->dma_area = rme9652->playback_buffer;
	runtime->dma_bytes = RME9652_DMA_AREA_BYTES;

	if (rme9652->capture_substream == NULL) {
		FUNC1(rme9652);
		FUNC0(rme9652, -1, 0);
	}

	rme9652->playback_pid = current->pid;
	rme9652->playback_substream = substream;

	FUNC9(&rme9652->lock);

	FUNC4(runtime, 0, 32, 24);
	FUNC3(runtime, 0, SNDRV_PCM_HW_PARAM_PERIOD_SIZE, &hw_constraints_period_sizes);
	FUNC5(runtime, 0, SNDRV_PCM_HW_PARAM_CHANNELS,
			     snd_rme9652_hw_rule_channels, rme9652,
			     SNDRV_PCM_HW_PARAM_CHANNELS, -1);
	FUNC5(runtime, 0, SNDRV_PCM_HW_PARAM_CHANNELS,
			     snd_rme9652_hw_rule_channels_rate, rme9652,
			     SNDRV_PCM_HW_PARAM_RATE, -1);
	FUNC5(runtime, 0, SNDRV_PCM_HW_PARAM_RATE,
			     snd_rme9652_hw_rule_rate_channels, rme9652,
			     SNDRV_PCM_HW_PARAM_CHANNELS, -1);

	rme9652->creg_spdif_stream = rme9652->creg_spdif;
	rme9652->spdif_ctl->vd[0].access &= ~SNDRV_CTL_ELEM_ACCESS_INACTIVE;
	FUNC2(rme9652->card, SNDRV_CTL_EVENT_MASK_VALUE |
		       SNDRV_CTL_EVENT_MASK_INFO, &rme9652->spdif_ctl->id);
	return 0;
}