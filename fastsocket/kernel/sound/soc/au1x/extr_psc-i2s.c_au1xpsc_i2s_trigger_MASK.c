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
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct au1xpsc_audio_data {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 int FUNC0 (struct snd_pcm_substream*) ; 
 int FUNC1 (struct au1xpsc_audio_data*,int) ; 
 int FUNC2 (struct au1xpsc_audio_data*,int) ; 
 struct au1xpsc_audio_data* au1xpsc_i2s_workdata ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream, int cmd,
			       struct snd_soc_dai *dai)
{
	struct au1xpsc_audio_data *pscdata = au1xpsc_i2s_workdata;
	int ret, stype = FUNC0(substream);

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
	case SNDRV_PCM_TRIGGER_RESUME:
		ret = FUNC1(pscdata, stype);
		break;
	case SNDRV_PCM_TRIGGER_STOP:
	case SNDRV_PCM_TRIGGER_SUSPEND:
		ret = FUNC2(pscdata, stype);
		break;
	default:
		ret = -EINVAL;
	}
	return ret;
}