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
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct nm256_stream {int suspended; int running; } ;
struct nm256 {int /*<<< orphan*/  reg_lock; } ;
struct TYPE_2__ {struct nm256_stream* private_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nm256*,struct nm256_stream*,struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (struct nm256*) ; 
 struct nm256* FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct snd_pcm_substream *substream, int cmd)
{
	struct nm256 *chip = FUNC3(substream);
	struct nm256_stream *s = substream->runtime->private_data;
	int err = 0;

	if (FUNC0(!s))
		return -ENXIO;

	FUNC4(&chip->reg_lock);
	switch (cmd) {
	case SNDRV_PCM_TRIGGER_RESUME:
		s->suspended = 0;
		/* fallthru */
	case SNDRV_PCM_TRIGGER_START:
		if (! s->running) {
			FUNC1(chip, s, substream);
			s->running = 1;
		}
		break;
	case SNDRV_PCM_TRIGGER_SUSPEND:
		s->suspended = 1;
		/* fallthru */
	case SNDRV_PCM_TRIGGER_STOP:
		if (s->running) {
			FUNC2(chip);
			s->running = 0;
		}
		break;
	default:
		err = -EINVAL;
		break;
	}
	FUNC5(&chip->reg_lock);
	return err;
}