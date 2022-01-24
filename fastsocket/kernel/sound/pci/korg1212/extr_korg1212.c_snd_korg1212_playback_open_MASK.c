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
struct snd_pcm_runtime {int /*<<< orphan*/  hw; } ;
struct snd_korg1212 {size_t cardState; int /*<<< orphan*/  lock; scalar_t__ errorcnt; int /*<<< orphan*/  channels; int /*<<< orphan*/  periodsize; int /*<<< orphan*/  playback_pid; struct snd_pcm_substream* playback_substream; int /*<<< orphan*/  dma_play; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  K1212_CHANNELS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  K1212_PERIODS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIOD_SIZE ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  kPlayBufferFrames ; 
 int /*<<< orphan*/  FUNC1 (struct snd_korg1212*) ; 
 int /*<<< orphan*/  snd_korg1212_playback_info ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_substream*,int /*<<< orphan*/ *) ; 
 struct snd_korg1212* FUNC4 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * stateName ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream)
{
        unsigned long flags;
        struct snd_korg1212 *korg1212 = FUNC4(substream);
        struct snd_pcm_runtime *runtime = substream->runtime;

	FUNC0("K1212_DEBUG: snd_korg1212_playback_open [%s]\n",
			   stateName[korg1212->cardState]);

	FUNC1(korg1212);

        runtime->hw = snd_korg1212_playback_info;
	FUNC3(substream, &korg1212->dma_play);

        FUNC5(&korg1212->lock, flags);

        korg1212->playback_substream = substream;
	korg1212->playback_pid = current->pid;
        korg1212->periodsize = K1212_PERIODS;
	korg1212->channels = K1212_CHANNELS;
	korg1212->errorcnt = 0;

        FUNC6(&korg1212->lock, flags);

        FUNC2(runtime, SNDRV_PCM_HW_PARAM_PERIOD_SIZE, kPlayBufferFrames, kPlayBufferFrames);
        return 0;
}