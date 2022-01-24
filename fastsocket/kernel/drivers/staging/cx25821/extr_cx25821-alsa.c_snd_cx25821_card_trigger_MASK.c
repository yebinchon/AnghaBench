#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  reg_lock; } ;
typedef  TYPE_1__ snd_cx25821_card_t ;

/* Variables and functions */
 int EINVAL ; 
#define  SNDRV_PCM_TRIGGER_START 129 
#define  SNDRV_PCM_TRIGGER_STOP 128 
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream,
				    int cmd)
{
	snd_cx25821_card_t *chip = FUNC2(substream);
	int err = 0;

	/* Local interrupts are already disabled by ALSA */
	FUNC3(&chip->reg_lock);

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
		err = FUNC0(chip);
		break;
	case SNDRV_PCM_TRIGGER_STOP:
		err = FUNC1(chip);
		break;
	default:
		err = -EINVAL;
		break;
	}

	FUNC4(&chip->reg_lock);

	return err;
}