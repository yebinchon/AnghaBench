#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_pcm_runtime2 {scalar_t__ twake; } ;
struct snd_pcm_runtime {scalar_t__ avail_max; scalar_t__ buffer_size; scalar_t__ stop_threshold; int /*<<< orphan*/  sleep; TYPE_2__* control; int /*<<< orphan*/  tsleep; TYPE_1__* status; } ;
typedef  scalar_t__ snd_pcm_uframes_t ;
struct TYPE_4__ {scalar_t__ avail_min; } ;
struct TYPE_3__ {scalar_t__ state; } ;

/* Variables and functions */
 int EPIPE ; 
 scalar_t__ SNDRV_PCM_STATE_DRAINING ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 scalar_t__ FUNC0 (struct snd_pcm_runtime*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_substream*) ; 
 scalar_t__ FUNC2 (struct snd_pcm_runtime*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_substream*) ; 

int FUNC5(struct snd_pcm_substream *substream,
			 struct snd_pcm_runtime *runtime)
{
	snd_pcm_uframes_t avail;

	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
		avail = FUNC2(runtime);
	else
		avail = FUNC0(runtime);
	if (avail > runtime->avail_max)
		runtime->avail_max = avail;
	if (runtime->status->state == SNDRV_PCM_STATE_DRAINING) {
		if (avail >= runtime->buffer_size) {
			FUNC1(substream);
			return -EPIPE;
		}
	} else {
		if (avail >= runtime->stop_threshold) {
			FUNC4(substream);
			return -EPIPE;
		}
	}
	if (((struct snd_pcm_runtime2 *)runtime)->twake) {
		if (avail >= ((struct snd_pcm_runtime2 *)runtime)->twake)
			FUNC3(&runtime->tsleep);
	} else if (avail >= runtime->control->avail_min)
		FUNC3(&runtime->sleep);
	return 0;
}