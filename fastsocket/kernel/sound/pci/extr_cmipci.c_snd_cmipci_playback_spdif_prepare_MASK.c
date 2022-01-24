#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct snd_pcm_substream {int dummy; } ;
struct cmipci {int dig_pcm_status; int /*<<< orphan*/ * channel; scalar_t__ can_ac3_hw; } ;

/* Variables and functions */
 size_t CM_CH_PLAY ; 
 int IEC958_AES0_NONAUDIO ; 
 int FUNC0 (struct cmipci*,struct snd_pcm_substream*,int,int) ; 
 int FUNC1 (struct cmipci*,int /*<<< orphan*/ *,struct snd_pcm_substream*) ; 
 struct cmipci* FUNC2 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream)
{
	struct cmipci *cm = FUNC2(substream);
	int err, do_ac3;

	if (cm->can_ac3_hw) 
		do_ac3 = cm->dig_pcm_status & IEC958_AES0_NONAUDIO;
	else
		do_ac3 = 1; /* doesn't matter */
	if ((err = FUNC0(cm, substream, 1, do_ac3)) < 0)
		return err;
	return FUNC1(cm, &cm->channel[CM_CH_PLAY], substream);
}