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
struct snd_pcm_substream {scalar_t__ timer; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int /*<<< orphan*/  trigger_tstamp; TYPE_1__* status; int /*<<< orphan*/  tsleep; int /*<<< orphan*/  sleep; } ;
struct TYPE_2__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_STATE_PAUSED ; 
 int /*<<< orphan*/  SNDRV_PCM_STATE_RUNNING ; 
 int /*<<< orphan*/  SNDRV_TIMER_EVENT_MCONTINUE ; 
 int /*<<< orphan*/  SNDRV_TIMER_EVENT_MPAUSE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct snd_pcm_substream *substream, int push)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	FUNC0(substream);
	if (push) {
		runtime->status->state = SNDRV_PCM_STATE_PAUSED;
		if (substream->timer)
			FUNC1(substream->timer,
					 SNDRV_TIMER_EVENT_MPAUSE,
					 &runtime->trigger_tstamp);
		FUNC2(&runtime->sleep);
		FUNC2(&runtime->tsleep);
	} else {
		runtime->status->state = SNDRV_PCM_STATE_RUNNING;
		if (substream->timer)
			FUNC1(substream->timer,
					 SNDRV_TIMER_EVENT_MCONTINUE,
					 &runtime->trigger_tstamp);
	}
}