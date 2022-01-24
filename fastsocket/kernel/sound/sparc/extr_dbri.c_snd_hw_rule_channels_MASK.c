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
struct snd_interval {int min; int max; int integer; } ;

/* Variables and functions */
 int SNDRV_PCM_FMTBIT_S16_BE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_FORMAT ; 
 struct snd_interval* FUNC0 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 struct snd_mask* FUNC1 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_interval*) ; 
 int FUNC3 (struct snd_interval*,struct snd_interval*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_hw_params *params,
				struct snd_pcm_hw_rule *rule)
{
	struct snd_interval *c = FUNC0(params,
				SNDRV_PCM_HW_PARAM_CHANNELS);
	struct snd_mask *f = FUNC1(params, SNDRV_PCM_HW_PARAM_FORMAT);
	struct snd_interval ch;

	FUNC2(&ch);
	if (!(f->bits[0] & SNDRV_PCM_FMTBIT_S16_BE)) {
		ch.min = 1;
		ch.max = 1;
		ch.integer = 1;
		return FUNC3(c, &ch);
	}
	return 0;
}