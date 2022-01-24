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
struct snd_ps3_card_info {int /*<<< orphan*/  start_delay; struct snd_pcm_substream* substream; } ;
struct snd_pcm_substream {TYPE_1__* pcm; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int /*<<< orphan*/  hw; } ;
struct TYPE_2__ {int device; } ;

/* Variables and functions */
 int PS3_AUDIO_FIFO_STAGE_SIZE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_BUFFER_BYTES ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct snd_ps3_card_info* FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  snd_ps3_pcm_hw ; 
 int /*<<< orphan*/  snd_ps3_start_delay ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_ps3_card_info *card = FUNC1(substream);
	int pcm_index;

	pcm_index = substream->pcm->device;
	/* to retrieve substream/runtime in interrupt handler */
	card->substream = substream;

	runtime->hw = snd_ps3_pcm_hw;

	card->start_delay = snd_ps3_start_delay;

	/* mute off */
	FUNC2(0); /* this function sleep */

	FUNC0(runtime, 0, SNDRV_PCM_HW_PARAM_BUFFER_BYTES,
				   PS3_AUDIO_FIFO_STAGE_SIZE * 4 * 2);
	return 0;
}