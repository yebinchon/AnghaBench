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
struct snd_pcm_substream {int dummy; } ;
struct snd_line6_pcm {int /*<<< orphan*/  flags; scalar_t__ count_out; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_PAUSE_PLAYBACK ; 
 int /*<<< orphan*/  BIT_RUNNING_PLAYBACK ; 
 int EINVAL ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 131 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 130 
#define  SNDRV_PCM_TRIGGER_START 129 
#define  SNDRV_PCM_TRIGGER_STOP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct snd_line6_pcm* FUNC2 (struct snd_pcm_substream*) ; 
 int FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_line6_pcm*) ; 

int FUNC7(struct snd_pcm_substream *substream, int cmd)
{
	struct snd_line6_pcm *line6pcm = FUNC2(substream);
	int err;
	line6pcm->count_out = 0;

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
		if (!FUNC5(BIT_RUNNING_PLAYBACK, &line6pcm->flags)) {
			err = FUNC3(substream);

			if (err < 0) {
				FUNC0(BIT_RUNNING_PLAYBACK, &line6pcm->flags);
				return err;
			}
		}

		break;

	case SNDRV_PCM_TRIGGER_STOP:
		if (FUNC4(BIT_RUNNING_PLAYBACK, &line6pcm->flags))
			FUNC6(line6pcm);

		break;

	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
		FUNC1(BIT_PAUSE_PLAYBACK, &line6pcm->flags);
		break;

	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
		FUNC0(BIT_PAUSE_PLAYBACK, &line6pcm->flags);
		break;

	default:
		return -EINVAL;
	}

	return 0;
}