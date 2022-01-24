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
struct snd_pcm_substream {int stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct loopback_pcm* private_data; } ;
struct loopback_pcm {void* last_jiffies; int /*<<< orphan*/  last_drift; int /*<<< orphan*/  pcm_rate_shift; struct loopback_cable* cable; } ;
struct loopback_cable {int running; int pause; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int SNDRV_PCM_STREAM_PLAYBACK ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 131 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 130 
#define  SNDRV_PCM_TRIGGER_START 129 
#define  SNDRV_PCM_TRIGGER_STOP 128 
 void* jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct loopback_pcm*) ; 
 int FUNC1 (struct loopback_cable*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct loopback_pcm*) ; 
 int /*<<< orphan*/  FUNC3 (struct loopback_pcm*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream, int cmd)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct loopback_pcm *dpcm = runtime->private_data;
	struct loopback_cable *cable = dpcm->cable;
	int err, stream = 1 << substream->stream;

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
		err = FUNC1(cable, substream->stream);
		if (err < 0)
			return err;
		dpcm->last_jiffies = jiffies;
		dpcm->pcm_rate_shift = 0;
		dpcm->last_drift = 0;
		FUNC4(&cable->lock);	
		cable->running |= stream;
		cable->pause &= ~stream;
		FUNC5(&cable->lock);
		FUNC2(dpcm);
		if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
			FUNC0(dpcm);
		break;
	case SNDRV_PCM_TRIGGER_STOP:
		FUNC4(&cable->lock);	
		cable->running &= ~stream;
		cable->pause &= ~stream;
		FUNC5(&cable->lock);
		FUNC3(dpcm);
		if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
			FUNC0(dpcm);
		break;
	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
		FUNC4(&cable->lock);	
		cable->pause |= stream;
		FUNC5(&cable->lock);
		FUNC3(dpcm);
		break;
	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
		FUNC4(&cable->lock);
		dpcm->last_jiffies = jiffies;
		cable->pause &= ~stream;
		FUNC5(&cable->lock);
		FUNC2(dpcm);
		break;
	default:
		return -EINVAL;
	}
	return 0;
}