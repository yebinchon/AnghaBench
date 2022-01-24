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
struct snd_pcm_substream {int /*<<< orphan*/  pcm_release; int /*<<< orphan*/  runtime; int /*<<< orphan*/  f_flags; } ;
struct TYPE_5__ {int params; int trigger; int rate; int channels; scalar_t__ subdivision; scalar_t__ maxfrags; scalar_t__ fragshift; int /*<<< orphan*/  format; int /*<<< orphan*/  params_lock; } ;
struct snd_pcm_runtime2 {TYPE_2__ oss; } ;
struct snd_pcm_oss_setup {scalar_t__ block; scalar_t__ nonblock; } ;
struct TYPE_4__ {int oss; struct snd_pcm_oss_setup setup; } ;
struct TYPE_6__ {TYPE_1__ oss; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFMT_MU_LAW ; 
 int /*<<< orphan*/  AFMT_S16_LE ; 
 int /*<<< orphan*/  AFMT_U8 ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int FUNC0 (int) ; 
#define  SNDRV_MINOR_OSS_PCM_16 129 
#define  SNDRV_MINOR_OSS_PCM_8 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct snd_pcm_runtime2* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  snd_pcm_oss_release_substream ; 

__attribute__((used)) static void FUNC4(struct snd_pcm_substream *substream,
				       struct snd_pcm_oss_setup *setup,
				       int minor)
{
	struct snd_pcm_runtime2 *runtime;

	FUNC3(substream)->oss.oss = 1;
	FUNC3(substream)->oss.setup = *setup;
	if (setup->nonblock)
		substream->f_flags |= O_NONBLOCK;
	else if (setup->block)
		substream->f_flags &= ~O_NONBLOCK;
	runtime = FUNC2(substream->runtime);
	runtime->oss.params = 1;
	runtime->oss.trigger = 1;
	runtime->oss.rate = 8000;
	FUNC1(&runtime->oss.params_lock);
	switch (FUNC0(minor)) {
	case SNDRV_MINOR_OSS_PCM_8:
		runtime->oss.format = AFMT_U8;
		break;
	case SNDRV_MINOR_OSS_PCM_16:
		runtime->oss.format = AFMT_S16_LE;
		break;
	default:
		runtime->oss.format = AFMT_MU_LAW;
	}
	runtime->oss.channels = 1;
	runtime->oss.fragshift = 0;
	runtime->oss.maxfrags = 0;
	runtime->oss.subdivision = 0;
	substream->pcm_release = snd_pcm_oss_release_substream;
}