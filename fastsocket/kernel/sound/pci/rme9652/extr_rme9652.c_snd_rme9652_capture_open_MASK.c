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
struct snd_rme9652 {int /*<<< orphan*/  lock; struct snd_pcm_substream* capture_substream; int /*<<< orphan*/  capture_pid; int /*<<< orphan*/ * playback_substream; int /*<<< orphan*/  capture_buffer; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int /*<<< orphan*/  dma_bytes; int /*<<< orphan*/  dma_area; int /*<<< orphan*/  hw; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  RME9652_DMA_AREA_BYTES ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIOD_SIZE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  hw_constraints_period_sizes ; 
 int /*<<< orphan*/  FUNC0 (struct snd_rme9652*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_rme9652*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snd_rme9652*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm_substream*) ; 
 struct snd_rme9652* FUNC6 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  snd_rme9652_capture_subinfo ; 
 int /*<<< orphan*/  snd_rme9652_hw_rule_channels ; 
 int /*<<< orphan*/  snd_rme9652_hw_rule_channels_rate ; 
 int /*<<< orphan*/  snd_rme9652_hw_rule_rate_channels ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct snd_pcm_substream *substream)
{
	struct snd_rme9652 *rme9652 = FUNC6(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;

	FUNC7(&rme9652->lock);

	FUNC5(substream);

	runtime->hw = snd_rme9652_capture_subinfo;
	runtime->dma_area = rme9652->capture_buffer;
	runtime->dma_bytes = RME9652_DMA_AREA_BYTES;

	if (rme9652->playback_substream == NULL) {
		FUNC1(rme9652);
		FUNC0(rme9652, -1, 0);
	}

	rme9652->capture_pid = current->pid;
	rme9652->capture_substream = substream;

	FUNC8(&rme9652->lock);

	FUNC3(runtime, 0, 32, 24);
	FUNC2(runtime, 0, SNDRV_PCM_HW_PARAM_PERIOD_SIZE, &hw_constraints_period_sizes);
	FUNC4(runtime, 0, SNDRV_PCM_HW_PARAM_CHANNELS,
			     snd_rme9652_hw_rule_channels, rme9652,
			     SNDRV_PCM_HW_PARAM_CHANNELS, -1);
	FUNC4(runtime, 0, SNDRV_PCM_HW_PARAM_CHANNELS,
			     snd_rme9652_hw_rule_channels_rate, rme9652,
			     SNDRV_PCM_HW_PARAM_RATE, -1);
	FUNC4(runtime, 0, SNDRV_PCM_HW_PARAM_RATE,
			     snd_rme9652_hw_rule_rate_channels, rme9652,
			     SNDRV_PCM_HW_PARAM_CHANNELS, -1);
	return 0;
}