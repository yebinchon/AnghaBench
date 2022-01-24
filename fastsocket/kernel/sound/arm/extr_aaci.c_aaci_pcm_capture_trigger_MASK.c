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
struct snd_pcm_substream {TYPE_1__* runtime; struct aaci* private_data; } ;
struct aaci_runtime {int dummy; } ;
struct aaci {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {struct aaci_runtime* private_data; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 133 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 132 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 int /*<<< orphan*/  FUNC0 (struct aaci_runtime*) ; 
 int /*<<< orphan*/  FUNC1 (struct aaci_runtime*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream, int cmd)
{
	struct aaci *aaci = substream->private_data;
	struct aaci_runtime *aacirun = substream->runtime->private_data;
	unsigned long flags;
	int ret = 0;

	FUNC2(&aaci->lock, flags);

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
		FUNC0(aacirun);
		break;

	case SNDRV_PCM_TRIGGER_RESUME:
		FUNC0(aacirun);
		break;

	case SNDRV_PCM_TRIGGER_STOP:
		FUNC1(aacirun);
		break;

	case SNDRV_PCM_TRIGGER_SUSPEND:
		FUNC1(aacirun);
		break;

	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
		break;

	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
		break;

	default:
		ret = -EINVAL;
	}

	FUNC3(&aaci->lock, flags);

	return ret;
}