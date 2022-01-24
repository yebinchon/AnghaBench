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
struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  hw_ready; } ;
struct snd_ml403_ac97cr {int enable_capture_irq; int /*<<< orphan*/  capture_irq; TYPE_1__ capture_ind2_rec; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR_RECRESET ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ml403_ac97cr*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  RESETFIFO ; 
#define  SNDRV_PCM_TRIGGER_START 129 
#define  SNDRV_PCM_TRIGGER_STOP 128 
 int /*<<< orphan*/  WORK_INFO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm_substream*,TYPE_1__*) ; 
 struct snd_ml403_ac97cr* FUNC6 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int
FUNC7(struct snd_pcm_substream *substream,
				      int cmd)
{
	struct snd_ml403_ac97cr *ml403_ac97cr;
	int err = 0;

	ml403_ac97cr = FUNC6(substream);

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
		FUNC1(WORK_INFO, "trigger(capture): START\n");
		ml403_ac97cr->capture_ind2_rec.hw_ready = 0;

		/* clear record FIFO */
		FUNC4(FUNC0(ml403_ac97cr, RESETFIFO), CR_RECRESET);

		/* enable record irq */
		ml403_ac97cr->enable_capture_irq = 1;
		FUNC3(ml403_ac97cr->capture_irq);
		break;
	case SNDRV_PCM_TRIGGER_STOP:
		FUNC1(WORK_INFO, "trigger(capture): STOP\n");
		ml403_ac97cr->capture_ind2_rec.hw_ready = 0;
#ifdef SND_PCM_INDIRECT2_STAT
		snd_pcm_indirect2_stat(substream,
				       &ml403_ac97cr->capture_ind2_rec);
#endif
		/* disable capture irq */
		FUNC2(ml403_ac97cr->capture_irq);
		ml403_ac97cr->enable_capture_irq = 0;
		break;
	default:
		err = -EINVAL;
		break;
	}
	FUNC1(WORK_INFO, "trigger(capture): (done)\n");
	return err;
}