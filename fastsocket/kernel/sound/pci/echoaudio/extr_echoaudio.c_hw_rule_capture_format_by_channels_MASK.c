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
struct snd_mask {int* bits; } ;
struct snd_interval {int min; } ;

/* Variables and functions */
 int SNDRV_PCM_FMTBIT_S32_BE ; 
 int SNDRV_PCM_FMTBIT_U8 ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_FORMAT ; 
 struct snd_interval* FUNC0 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 struct snd_mask* FUNC1 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_mask*) ; 
 int FUNC3 (struct snd_mask*,struct snd_mask*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_hw_params *params,
					      struct snd_pcm_hw_rule *rule)
{
	struct snd_interval *c = FUNC0(params,
						   SNDRV_PCM_HW_PARAM_CHANNELS);
	struct snd_mask *f = FUNC1(params, SNDRV_PCM_HW_PARAM_FORMAT);
	struct snd_mask fmt;

	FUNC2(&fmt);

#ifndef ECHOCARD_HAS_STEREO_BIG_ENDIAN32
	/* >=2 channels cannot be S32_BE */
	if (c->min == 2) {
		fmt.bits[0] &= ~SNDRV_PCM_FMTBIT_S32_BE;
		return FUNC3(f, &fmt);
	}
#endif
	/* > 2 channels cannot be U8 and S32_BE */
	if (c->min > 2) {
		fmt.bits[0] &= ~(SNDRV_PCM_FMTBIT_U8 | SNDRV_PCM_FMTBIT_S32_BE);
		return FUNC3(f, &fmt);
	}
	/* Mono is ok with any format */
	return 0;
}