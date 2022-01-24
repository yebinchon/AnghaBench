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
struct snd_pcm_hw_rule {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {int min; int max; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 struct snd_interval* FUNC0 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_interval*,struct snd_interval const*) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_hw_params *params,
					      struct snd_pcm_hw_rule *rule)
{
	struct snd_interval *rate = FUNC0(params, SNDRV_PCM_HW_PARAM_RATE);
	if (rate->min > 48000) {
		static const struct snd_interval double_rate_channels = {
			.min = 2,
			.max = 2,
		};
		struct snd_interval *channels = FUNC0(params, SNDRV_PCM_HW_PARAM_CHANNELS);
		return FUNC1(channels, &double_rate_channels);
	}
	return 0;
}