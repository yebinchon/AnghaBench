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
struct snd_line6_pcm {int /*<<< orphan*/  flags; scalar_t__ count_in; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_RUNNING_CAPTURE ; 
 int EINVAL ; 
#define  SNDRV_PCM_TRIGGER_START 129 
#define  SNDRV_PCM_TRIGGER_STOP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct snd_line6_pcm* FUNC1 (struct snd_pcm_substream*) ; 
 int FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_line6_pcm*) ; 

int FUNC6(struct snd_pcm_substream *substream, int cmd)
{
	struct snd_line6_pcm *line6pcm = FUNC1(substream);
	int err;
	line6pcm->count_in = 0;

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
		if (!FUNC4(BIT_RUNNING_CAPTURE, &line6pcm->flags)) {
			err = FUNC2(substream);

			if (err < 0) {
				FUNC0(BIT_RUNNING_CAPTURE, &line6pcm->flags);
				return err;
			}
		}

		break;

	case SNDRV_PCM_TRIGGER_STOP:
		if (FUNC3(BIT_RUNNING_CAPTURE, &line6pcm->flags))
			FUNC5(line6pcm);

		break;

	default:
		return -EINVAL;
	}

	return 0;
}