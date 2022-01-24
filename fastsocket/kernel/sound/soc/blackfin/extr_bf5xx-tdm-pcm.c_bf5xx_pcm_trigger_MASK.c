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
struct snd_pcm_substream {int /*<<< orphan*/  stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct sport_device* private_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 int /*<<< orphan*/  FUNC0 (struct sport_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct sport_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct sport_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct sport_device*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream, int cmd)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct sport_device *sport = runtime->private_data;
	int ret = 0;

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
		if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
			FUNC2(sport);
		else
			FUNC0(sport);
		break;
	case SNDRV_PCM_TRIGGER_STOP:
	case SNDRV_PCM_TRIGGER_SUSPEND:
	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
		if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
			FUNC3(sport);
		else
			FUNC1(sport);
		break;
	default:
		ret = -EINVAL;
	}

	return ret;
}