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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {TYPE_1__* status; int /*<<< orphan*/  sleep; } ;
struct snd_pcm_oss_file {struct snd_pcm_substream** streams; } ;
struct file {struct snd_pcm_oss_file* private_data; } ;
typedef  scalar_t__ snd_pcm_state_t ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int /*<<< orphan*/  ofile ;
struct TYPE_5__ {scalar_t__ trigger; } ;
struct TYPE_6__ {TYPE_2__ oss; } ;
struct TYPE_4__ {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCM_ENABLE_INPUT ; 
 unsigned int POLLIN ; 
 unsigned int POLLOUT ; 
 unsigned int POLLRDNORM ; 
 unsigned int POLLWRNORM ; 
 scalar_t__ SNDRV_PCM_STATE_DRAINING ; 
 scalar_t__ SNDRV_PCM_STATE_RUNNING ; 
 size_t SNDRV_PCM_STREAM_CAPTURE ; 
 size_t SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_oss_file*,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC1 (struct snd_pcm_runtime*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct snd_pcm_substream*) ; 
 scalar_t__ FUNC4 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm_oss_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_pcm_substream*) ; 

__attribute__((used)) static unsigned int FUNC8(struct file *file, poll_table * wait)
{
	struct snd_pcm_oss_file *pcm_oss_file;
	unsigned int mask;
	struct snd_pcm_substream *psubstream = NULL, *csubstream = NULL;
	
	pcm_oss_file = file->private_data;

	psubstream = pcm_oss_file->streams[SNDRV_PCM_STREAM_PLAYBACK];
	csubstream = pcm_oss_file->streams[SNDRV_PCM_STREAM_CAPTURE];

	mask = 0;
	if (psubstream != NULL) {
		struct snd_pcm_runtime *runtime = psubstream->runtime;
		FUNC2(file, &runtime->sleep, wait);
		FUNC6(psubstream);
		if (runtime->status->state != SNDRV_PCM_STATE_DRAINING &&
		    (runtime->status->state != SNDRV_PCM_STATE_RUNNING ||
		     FUNC4(psubstream)))
			mask |= POLLOUT | POLLWRNORM;
		FUNC7(psubstream);
	}
	if (csubstream != NULL) {
		struct snd_pcm_runtime *runtime = csubstream->runtime;
		snd_pcm_state_t ostate;
		FUNC2(file, &runtime->sleep, wait);
		FUNC6(csubstream);
		if ((ostate = runtime->status->state) != SNDRV_PCM_STATE_RUNNING ||
		    FUNC3(csubstream))
			mask |= POLLIN | POLLRDNORM;
		FUNC7(csubstream);
		if (ostate != SNDRV_PCM_STATE_RUNNING && FUNC1(runtime)->oss.trigger) {
			struct snd_pcm_oss_file ofile;
			FUNC0(&ofile, 0, sizeof(ofile));
			ofile.streams[SNDRV_PCM_STREAM_CAPTURE] = pcm_oss_file->streams[SNDRV_PCM_STREAM_CAPTURE];
			FUNC1(runtime)->oss.trigger = 0;
			FUNC5(&ofile, PCM_ENABLE_INPUT);
		}
	}

	return mask;
}