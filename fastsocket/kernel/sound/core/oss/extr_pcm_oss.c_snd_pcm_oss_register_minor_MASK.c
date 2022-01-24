#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm {int info_flags; char* name; scalar_t__ device; TYPE_2__* card; TYPE_1__* streams; } ;
struct TYPE_7__ {int reg_mask; scalar_t__ reg; } ;
struct TYPE_8__ {TYPE_3__ oss; } ;
struct TYPE_6__ {size_t number; } ;
struct TYPE_5__ {scalar_t__ substream_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_OSS_INFO_DEV_AUDIO ; 
 int SNDRV_PCM_INFO_HALF_DUPLEX ; 
 size_t SNDRV_PCM_STREAM_CAPTURE ; 
 size_t SNDRV_PCM_STREAM_PLAYBACK ; 
 int* adsp_map ; 
 int* dsp_map ; 
 TYPE_4__* FUNC0 (struct snd_pcm*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,char*) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm *pcm)
{
	FUNC0(pcm)->oss.reg = 0;
	if (dsp_map[pcm->card->number] == (int)pcm->device) {
		char name[128];
		int duplex;
		FUNC1(pcm, 0);
		duplex = (pcm->streams[SNDRV_PCM_STREAM_PLAYBACK].substream_count > 0 && 
			      pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream_count && 
			      !(pcm->info_flags & SNDRV_PCM_INFO_HALF_DUPLEX));
		FUNC4(name, "%s%s", pcm->name, duplex ? " (DUPLEX)" : "");
#ifdef SNDRV_OSS_INFO_DEV_AUDIO
		snd_oss_info_register(SNDRV_OSS_INFO_DEV_AUDIO,
				      pcm->card->number,
				      name);
#endif
		FUNC0(pcm)->oss.reg++;
		FUNC0(pcm)->oss.reg_mask |= 1;
	}
	if (adsp_map[pcm->card->number] == (int)pcm->device) {
		FUNC1(pcm, 1);
		FUNC0(pcm)->oss.reg++;
		FUNC0(pcm)->oss.reg_mask |= 2;
	}

	if (FUNC0(pcm)->oss.reg)
		FUNC3(pcm);

	return 0;
}