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
struct snd_soc_pcm_runtime {TYPE_2__* dai; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; } ;
struct camelot_pcm {int dummy; } ;
struct TYPE_4__ {TYPE_1__* cpu_dai; } ;
struct TYPE_3__ {size_t id; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
#define  SNDRV_PCM_TRIGGER_START 129 
#define  SNDRV_PCM_TRIGGER_STOP 128 
 struct camelot_pcm* cam_pcm_data ; 
 int /*<<< orphan*/  FUNC0 (struct camelot_pcm*) ; 
 int /*<<< orphan*/  FUNC1 (struct camelot_pcm*) ; 
 int /*<<< orphan*/  FUNC2 (struct camelot_pcm*) ; 
 int /*<<< orphan*/  FUNC3 (struct camelot_pcm*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream, int cmd)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct camelot_pcm *cam = &cam_pcm_data[rtd->dai->cpu_dai->id];
	int recv = substream->stream == SNDRV_PCM_STREAM_PLAYBACK ? 0:1;

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
		if (recv)
			FUNC2(cam);
		else
			FUNC0(cam);
		break;
	case SNDRV_PCM_TRIGGER_STOP:
		if (recv)
			FUNC3(cam);
		else
			FUNC1(cam);
		break;
	default:
		return -EINVAL;
	}

	return 0;
}