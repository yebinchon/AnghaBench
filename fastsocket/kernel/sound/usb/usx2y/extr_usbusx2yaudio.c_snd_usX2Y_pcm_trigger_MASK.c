#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_usX2Y_substream {int /*<<< orphan*/  state; TYPE_2__* usX2Y; } ;
struct snd_pcm_substream {TYPE_3__* runtime; } ;
struct TYPE_6__ {struct snd_usX2Y_substream* private_data; } ;
struct TYPE_5__ {TYPE_1__** subs; } ;
struct TYPE_4__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPIPE ; 
 size_t SNDRV_PCM_STREAM_CAPTURE ; 
#define  SNDRV_PCM_TRIGGER_START 129 
#define  SNDRV_PCM_TRIGGER_STOP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  state_PREPARED ; 
 int /*<<< orphan*/  state_PRERUNNING ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream, int cmd)
{
	struct snd_usX2Y_substream *subs = substream->runtime->private_data;

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
		FUNC2("snd_usX2Y_pcm_trigger(START)\n");
		if (FUNC0(&subs->state) == state_PREPARED &&
		    FUNC0(&subs->usX2Y->subs[SNDRV_PCM_STREAM_CAPTURE]->state) >= state_PREPARED) {
			FUNC1(&subs->state, state_PRERUNNING);
		} else {
			FUNC2("\n");
			return -EPIPE;
		}
		break;
	case SNDRV_PCM_TRIGGER_STOP:
		FUNC2("snd_usX2Y_pcm_trigger(STOP)\n");
		if (FUNC0(&subs->state) >= state_PRERUNNING)
			FUNC1(&subs->state, state_PREPARED);
		break;
	default:
		return -EINVAL;
	}
	return 0;
}