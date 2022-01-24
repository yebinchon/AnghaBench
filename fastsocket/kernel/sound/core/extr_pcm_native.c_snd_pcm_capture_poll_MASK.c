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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {TYPE_2__* control; TYPE_1__* status; int /*<<< orphan*/  sleep; } ;
struct snd_pcm_file {struct snd_pcm_substream* substream; } ;
struct file {struct snd_pcm_file* private_data; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;
typedef  int /*<<< orphan*/  poll_table ;
struct TYPE_4__ {int /*<<< orphan*/  avail_min; } ;
struct TYPE_3__ {int state; } ;

/* Variables and functions */
 unsigned int ENXIO ; 
 scalar_t__ FUNC0 (struct snd_pcm_substream*) ; 
 unsigned int POLLERR ; 
 unsigned int POLLIN ; 
 unsigned int POLLRDNORM ; 
#define  SNDRV_PCM_STATE_DRAINING 131 
#define  SNDRV_PCM_STATE_PAUSED 130 
#define  SNDRV_PCM_STATE_PREPARED 129 
#define  SNDRV_PCM_STATE_RUNNING 128 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_runtime*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_substream*) ; 

__attribute__((used)) static unsigned int FUNC5(struct file *file, poll_table * wait)
{
	struct snd_pcm_file *pcm_file;
	struct snd_pcm_substream *substream;
	struct snd_pcm_runtime *runtime;
        unsigned int mask;
	snd_pcm_uframes_t avail;

	pcm_file = file->private_data;

	substream = pcm_file->substream;
	if (FUNC0(substream))
		return -ENXIO;
	runtime = substream->runtime;

	FUNC1(file, &runtime->sleep, wait);

	FUNC3(substream);
	avail = FUNC2(runtime);
	switch (runtime->status->state) {
	case SNDRV_PCM_STATE_RUNNING:
	case SNDRV_PCM_STATE_PREPARED:
	case SNDRV_PCM_STATE_PAUSED:
		if (avail >= runtime->control->avail_min) {
			mask = POLLIN | POLLRDNORM;
			break;
		}
		mask = 0;
		break;
	case SNDRV_PCM_STATE_DRAINING:
		if (avail > 0) {
			mask = POLLIN | POLLRDNORM;
			break;
		}
		/* Fall through */
	default:
		mask = POLLIN | POLLRDNORM | POLLERR;
		break;
	}
	FUNC4(substream);
	return mask;
}