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
struct snd_m3 {int /*<<< orphan*/  reg_lock; } ;
struct m3_dma {int running; } ;
struct TYPE_2__ {struct m3_dma* private_data; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENXIO ; 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct snd_m3*,struct m3_dma*,struct snd_pcm_substream*) ; 
 int FUNC2 (struct snd_m3*,struct m3_dma*,struct snd_pcm_substream*) ; 
 struct snd_m3* FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct snd_pcm_substream *subs, int cmd)
{
	struct snd_m3 *chip = FUNC3(subs);
	struct m3_dma *s = subs->runtime->private_data;
	int err = -EINVAL;

	if (FUNC0(!s))
		return -ENXIO;

	FUNC4(&chip->reg_lock);
	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
	case SNDRV_PCM_TRIGGER_RESUME:
		if (s->running)
			err = -EBUSY;
		else {
			s->running = 1;
			err = FUNC1(chip, s, subs);
		}
		break;
	case SNDRV_PCM_TRIGGER_STOP:
	case SNDRV_PCM_TRIGGER_SUSPEND:
		if (! s->running)
			err = 0; /* should return error? */
		else {
			s->running = 0;
			err = FUNC2(chip, s, subs);
		}
		break;
	}
	FUNC5(&chip->reg_lock);
	return err;
}