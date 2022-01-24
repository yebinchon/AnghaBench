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
struct sport_device {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; int /*<<< orphan*/  periods; int /*<<< orphan*/  dma_area; int /*<<< orphan*/  period_size; struct sport_device* private_data; } ;

/* Variables and functions */
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  bf5xx_dma_irq ; 
 int FUNC0 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sport_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sport_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sport_device*,int /*<<< orphan*/ ,struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (struct sport_device*,int /*<<< orphan*/ ,struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct sport_device *sport = runtime->private_data;
	int fragsize_bytes = FUNC0(runtime, runtime->period_size);

	fragsize_bytes /= runtime->channels;
	/* inflate the fragsize to match the dma width of SPORT */
	fragsize_bytes *= 8;

	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
		FUNC4(sport, bf5xx_dma_irq, substream);
		FUNC2(sport, runtime->dma_area,
			runtime->periods, fragsize_bytes);
	} else {
		FUNC3(sport, bf5xx_dma_irq, substream);
		FUNC1(sport, runtime->dma_area,
			runtime->periods, fragsize_bytes);
	}

	return 0;
}