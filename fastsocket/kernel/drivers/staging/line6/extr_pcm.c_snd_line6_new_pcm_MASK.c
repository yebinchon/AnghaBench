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
struct snd_pcm {int /*<<< orphan*/  name; int /*<<< orphan*/  private_free; struct snd_line6_pcm* private_data; } ;
struct snd_line6_pcm {TYPE_2__* line6; struct snd_pcm* pcm; } ;
struct TYPE_4__ {TYPE_1__* properties; int /*<<< orphan*/  card; } ;
struct TYPE_3__ {scalar_t__ name; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_CONTINUOUS ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  line6_cleanup_pcm ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  snd_line6_capture_ops ; 
 int /*<<< orphan*/  snd_line6_playback_ops ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct snd_line6_pcm *line6pcm)
{
	struct snd_pcm *pcm;
	int err;

	err = FUNC2(line6pcm->line6->card,
			 (char *)line6pcm->line6->properties->name,
			 0, 1, 1, &pcm);
	if (err < 0)
		return err;

	pcm->private_data = line6pcm;
	pcm->private_free = line6_cleanup_pcm;
	line6pcm->pcm = pcm;
	FUNC4(pcm->name, line6pcm->line6->properties->name);

	/* set operators */
	FUNC3(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_line6_playback_ops);
	FUNC3(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_line6_capture_ops);

	/* pre-allocation of buffers */
	FUNC1(pcm, SNDRV_DMA_TYPE_CONTINUOUS,
					FUNC0(GFP_KERNEL),
					64 * 1024, 128 * 1024);

	return 0;
}