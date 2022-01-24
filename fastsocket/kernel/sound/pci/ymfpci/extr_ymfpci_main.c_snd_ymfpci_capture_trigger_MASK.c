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
typedef  int u32 ;
struct snd_ymfpci_pcm {int capture_bank_number; int running; } ;
struct snd_ymfpci {int /*<<< orphan*/  reg_lock; } ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct TYPE_2__ {struct snd_ymfpci_pcm* private_data; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 133 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 132 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 int /*<<< orphan*/  YDSXGR_MAPOFREC ; 
 struct snd_ymfpci* FUNC0 (struct snd_pcm_substream*) ; 
 int FUNC1 (struct snd_ymfpci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ymfpci*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream,
				      int cmd)
{
	struct snd_ymfpci *chip = FUNC0(substream);
	struct snd_ymfpci_pcm *ypcm = substream->runtime->private_data;
	int result = 0;
	u32 tmp;

	FUNC3(&chip->reg_lock);
	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
	case SNDRV_PCM_TRIGGER_RESUME:
		tmp = FUNC1(chip, YDSXGR_MAPOFREC) | (1 << ypcm->capture_bank_number);
		FUNC2(chip, YDSXGR_MAPOFREC, tmp);
		ypcm->running = 1;
		break;
	case SNDRV_PCM_TRIGGER_STOP:
	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
	case SNDRV_PCM_TRIGGER_SUSPEND:
		tmp = FUNC1(chip, YDSXGR_MAPOFREC) & ~(1 << ypcm->capture_bank_number);
		FUNC2(chip, YDSXGR_MAPOFREC, tmp);
		ypcm->running = 0;
		break;
	default:
		result = -EINVAL;
		break;
	}
	FUNC4(&chip->reg_lock);
	return result;
}