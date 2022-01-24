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
struct vx_pipe {int running; int /*<<< orphan*/  start_tq; int /*<<< orphan*/  is_capture; } ;
struct vx_core {int chip_status; int /*<<< orphan*/  pcm_running; } ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct TYPE_2__ {struct vx_pipe* private_data; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 133 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 132 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 int VX_STAT_IS_STALE ; 
 struct vx_core* FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vx_core*,struct snd_pcm_substream*,struct vx_pipe*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vx_core*,struct vx_pipe*) ; 
 int /*<<< orphan*/  FUNC4 (struct vx_core*,struct vx_pipe*) ; 
 int FUNC5 (struct vx_core*,struct vx_pipe*,int) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *subs, int cmd)
{
	struct vx_core *chip = FUNC0(subs);
	struct vx_pipe *pipe = subs->runtime->private_data;
	int err;

	if (chip->chip_status & VX_STAT_IS_STALE)
		return -EBUSY;
		
	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
	case SNDRV_PCM_TRIGGER_RESUME:
		if (! pipe->is_capture)
			FUNC2(chip, subs, pipe, 2);
		/* FIXME:
		 * we trigger the pipe using tasklet, so that the interrupts are
		 * issued surely after the trigger is completed.
		 */ 
		FUNC1(&pipe->start_tq);
		chip->pcm_running++;
		pipe->running = 1;
		break;
	case SNDRV_PCM_TRIGGER_STOP:
	case SNDRV_PCM_TRIGGER_SUSPEND:
		FUNC5(chip, pipe, 0);
		FUNC3(chip, pipe);
		FUNC4(chip, pipe);
		chip->pcm_running--;
		pipe->running = 0;
		break;
	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
		if ((err = FUNC5(chip, pipe, 0)) < 0)
			return err;
		break;
	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
		if ((err = FUNC5(chip, pipe, 1)) < 0)
			return err;
		break;
	default:
		return -EINVAL;
	}
	return 0;
}