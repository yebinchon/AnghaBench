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
struct snd_pcm {TYPE_2__* card; scalar_t__ device; } ;
struct TYPE_4__ {int reg_mask; scalar_t__ reg; } ;
struct TYPE_6__ {TYPE_1__ oss; } ;
struct TYPE_5__ {size_t number; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_OSS_DEVICE_TYPE_PCM ; 
 int /*<<< orphan*/  SNDRV_OSS_INFO_DEV_AUDIO ; 
 int* dsp_map ; 
 TYPE_3__* FUNC0 (struct snd_pcm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm *pcm)
{
	if (FUNC0(pcm)->oss.reg) {
		if (FUNC0(pcm)->oss.reg_mask & 1) {
			FUNC0(pcm)->oss.reg_mask &= ~1;
			FUNC2(SNDRV_OSS_DEVICE_TYPE_PCM,
						  pcm->card, 0);
		}
		if (FUNC0(pcm)->oss.reg_mask & 2) {
			FUNC0(pcm)->oss.reg_mask &= ~2;
			FUNC2(SNDRV_OSS_DEVICE_TYPE_PCM,
						  pcm->card, 1);
		}
		if (dsp_map[pcm->card->number] == (int)pcm->device) {
#ifdef SNDRV_OSS_INFO_DEV_AUDIO
			snd_oss_info_unregister(SNDRV_OSS_INFO_DEV_AUDIO, pcm->card->number);
#endif
		}
		FUNC0(pcm)->oss.reg = 0;
	}
	return 0;
}