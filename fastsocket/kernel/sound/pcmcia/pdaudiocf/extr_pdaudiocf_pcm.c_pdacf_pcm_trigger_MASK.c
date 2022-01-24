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
struct snd_pdacf {int chip_status; TYPE_1__* ak4117; int /*<<< orphan*/  reg_lock; scalar_t__ pcm_running; int /*<<< orphan*/  pcm_tdone; int /*<<< orphan*/  pcm_hwptr; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int rate; } ;
struct TYPE_2__ {int rcs0; } ;

/* Variables and functions */
 int AK4117_CHECK_NO_RATE ; 
 int AK4117_CHECK_NO_STAT ; 
 int AK4117_UNLCK ; 
 int EBUSY ; 
 int EINVAL ; 
 int EIO ; 
 unsigned short PDAUDIOCF_RECORD ; 
 int /*<<< orphan*/  PDAUDIOCF_REG_SCR ; 
 int PDAUDIOCF_STAT_IS_STALE ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 133 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 132 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 unsigned short FUNC0 (struct snd_pdacf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pdacf*,int /*<<< orphan*/ ,unsigned short) ; 
 int FUNC2 (TYPE_1__*,int) ; 
 struct snd_pdacf* FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *subs, int cmd)
{
	struct snd_pdacf *chip = FUNC3(subs);
	struct snd_pcm_runtime *runtime = subs->runtime;
	int inc, ret = 0, rate;
	unsigned short mask, val, tmp;

	if (chip->chip_status & PDAUDIOCF_STAT_IS_STALE)
		return -EBUSY;

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
		chip->pcm_hwptr = 0;
		chip->pcm_tdone = 0;
		/* fall thru */
	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
	case SNDRV_PCM_TRIGGER_RESUME:
		mask = 0;
		val = PDAUDIOCF_RECORD;
		inc = 1;
		rate = FUNC2(chip->ak4117, AK4117_CHECK_NO_STAT|AK4117_CHECK_NO_RATE);
		break;
	case SNDRV_PCM_TRIGGER_STOP:
	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
	case SNDRV_PCM_TRIGGER_SUSPEND:
		mask = PDAUDIOCF_RECORD;
		val = 0;
		inc = -1;
		rate = 0;
		break;
	default:
		return -EINVAL;
	}
	FUNC4(&chip->reg_lock);
	chip->pcm_running += inc;
	tmp = FUNC0(chip, PDAUDIOCF_REG_SCR);
	if (chip->pcm_running) {
		if ((chip->ak4117->rcs0 & AK4117_UNLCK) || runtime->rate != rate) {
			chip->pcm_running -= inc;
			ret = -EIO;
			goto __end;
		}
	}
	tmp &= ~mask;
	tmp |= val;
	FUNC1(chip, PDAUDIOCF_REG_SCR, tmp);
      __end:
	FUNC5(&chip->reg_lock);
	FUNC2(chip->ak4117, AK4117_CHECK_NO_RATE);
	return ret;
}