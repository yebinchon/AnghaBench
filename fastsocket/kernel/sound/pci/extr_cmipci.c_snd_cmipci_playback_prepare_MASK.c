#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct cmipci {int dig_pcm_status; int /*<<< orphan*/ * channel; scalar_t__ can_ac3_hw; } ;
struct TYPE_2__ {int rate; scalar_t__ format; int channels; } ;

/* Variables and functions */
 size_t CM_CH_PLAY ; 
 int IEC958_AES0_NONAUDIO ; 
 scalar_t__ SNDRV_PCM_FORMAT_S16_LE ; 
 int FUNC0 (struct cmipci*,struct snd_pcm_substream*,int,int) ; 
 int FUNC1 (struct cmipci*,int /*<<< orphan*/ *,struct snd_pcm_substream*) ; 
 struct cmipci* FUNC2 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream)
{
	struct cmipci *cm = FUNC2(substream);
	int rate = substream->runtime->rate;
	int err, do_spdif, do_ac3 = 0;

	do_spdif = (rate >= 44100 && rate <= 96000 &&
		    substream->runtime->format == SNDRV_PCM_FORMAT_S16_LE &&
		    substream->runtime->channels == 2);
	if (do_spdif && cm->can_ac3_hw) 
		do_ac3 = cm->dig_pcm_status & IEC958_AES0_NONAUDIO;
	if ((err = FUNC0(cm, substream, do_spdif, do_ac3)) < 0)
		return err;
	return FUNC1(cm, &cm->channel[CM_CH_PLAY], substream);
}