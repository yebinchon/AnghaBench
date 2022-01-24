#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; TYPE_1__* pcm; } ;
struct snd_pcm_runtime {TYPE_2__* status; } ;
struct snd_card {int dummy; } ;
struct TYPE_4__ {int state; } ;
struct TYPE_3__ {struct snd_card* card; } ;

/* Variables and functions */
 int EBADFD ; 
 int /*<<< orphan*/  SNDRV_CTL_POWER_D0 ; 
#define  SNDRV_PCM_STATE_RUNNING 129 
 int SNDRV_PCM_STATE_SUSPENDED ; 
#define  SNDRV_PCM_STATE_XRUN 128 
 int FUNC0 (struct snd_pcm_substream*,int const) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_card*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_card*) ; 
 int FUNC5 (struct snd_card*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream)
{
	struct snd_card *card = substream->pcm->card;
	struct snd_pcm_runtime *runtime = substream->runtime;
	int result;

	FUNC3(card);
	if (runtime->status->state == SNDRV_PCM_STATE_SUSPENDED) {
		result = FUNC5(card, SNDRV_CTL_POWER_D0);
		if (result < 0)
			goto _unlock;
	}

	FUNC1(substream);
	switch (runtime->status->state) {
	case SNDRV_PCM_STATE_XRUN:
		result = 0;	/* already there */
		break;
	case SNDRV_PCM_STATE_RUNNING:
		result = FUNC0(substream, SNDRV_PCM_STATE_XRUN);
		break;
	default:
		result = -EBADFD;
	}
	FUNC2(substream);
 _unlock:
	FUNC4(card);
	return result;
}