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
struct snd_soc_pcm_runtime {TYPE_1__* dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct atmel_ssc_info {int dir_mask; int /*<<< orphan*/  lock; TYPE_2__* ssc; } ;
struct TYPE_6__ {size_t id; } ;
struct TYPE_5__ {int /*<<< orphan*/  regs; } ;
struct TYPE_4__ {TYPE_3__* cpu_dai; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  SR ; 
 int SSC_DIR_MASK_CAPTURE ; 
 int SSC_DIR_MASK_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 struct snd_soc_pcm_runtime* FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct atmel_ssc_info* ssc_info ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream,
			     struct snd_soc_dai *dai)
{
	struct snd_soc_pcm_runtime *rtd = FUNC1(substream);
	struct atmel_ssc_info *ssc_p = &ssc_info[rtd->dai->cpu_dai->id];
	int dir_mask;

	FUNC0("atmel_ssc_startup: SSC_SR=0x%u\n",
		FUNC4(ssc_p->ssc->regs, SR));

	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
		dir_mask = SSC_DIR_MASK_PLAYBACK;
	else
		dir_mask = SSC_DIR_MASK_CAPTURE;

	FUNC2(&ssc_p->lock);
	if (ssc_p->dir_mask & dir_mask) {
		FUNC3(&ssc_p->lock);
		return -EBUSY;
	}
	ssc_p->dir_mask |= dir_mask;
	FUNC3(&ssc_p->lock);

	return 0;
}