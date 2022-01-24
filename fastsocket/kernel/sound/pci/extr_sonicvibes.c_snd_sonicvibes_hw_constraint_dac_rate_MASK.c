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
struct snd_pcm_hw_rule {int dummy; } ;
struct snd_pcm_hw_params {unsigned int rate_num; int rate_den; } ;
struct TYPE_2__ {unsigned int min; unsigned int max; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 int SV_ADCMULT ; 
 int SV_REFFREQUENCY ; 
 TYPE_1__* FUNC0 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int*,unsigned int*,unsigned int*) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_hw_params *params,
						 struct snd_pcm_hw_rule *rule)
{
	unsigned int rate, div, r, m, n;

	if (FUNC0(params, SNDRV_PCM_HW_PARAM_RATE)->min == 
	    FUNC0(params, SNDRV_PCM_HW_PARAM_RATE)->max) {
		rate = FUNC0(params, SNDRV_PCM_HW_PARAM_RATE)->min;
		div = 48000 / rate;
		if (div > 8)
			div = 8;
		if ((48000 / div) == rate) {
			params->rate_num = rate;
			params->rate_den = 1;
		} else {
			FUNC2(rate, &r, &m, &n);
			FUNC1(SV_REFFREQUENCY % 16);
			FUNC1(SV_ADCMULT % 512);
			params->rate_num = (SV_REFFREQUENCY/16) * (n+2) * r;
			params->rate_den = (SV_ADCMULT/512) * (m+2);
		}
	}
	return 0;
}