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
struct snd_pcm_hw_rule {int /*<<< orphan*/  var; struct aaci* private; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {int max; } ;
struct aaci {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACSTREAM_FRONT ; 
 int /*<<< orphan*/  ACSTREAM_LFE ; 
 int /*<<< orphan*/  ACSTREAM_SURROUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 unsigned int SNDRV_PCM_RATE_5512 ; 
 unsigned int SNDRV_PCM_RATE_8000_48000 ; 
 unsigned int FUNC1 (struct aaci*,int /*<<< orphan*/ ) ; 
 struct snd_interval* FUNC2 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rate_list ; 
 int FUNC3 (struct snd_interval*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int
FUNC4(struct snd_pcm_hw_params *p, struct snd_pcm_hw_rule *rule)
{
	struct aaci *aaci = rule->private;
	unsigned int rate_mask = SNDRV_PCM_RATE_8000_48000|SNDRV_PCM_RATE_5512;
	struct snd_interval *c = FUNC2(p, SNDRV_PCM_HW_PARAM_CHANNELS);

	switch (c->max) {
	case 6:
		rate_mask &= FUNC1(aaci, ACSTREAM_LFE);
	case 4:
		rate_mask &= FUNC1(aaci, ACSTREAM_SURROUND);
	case 2:
		rate_mask &= FUNC1(aaci, ACSTREAM_FRONT);
	}

	return FUNC3(FUNC2(p, rule->var),
				 FUNC0(rate_list), rate_list,
				 rate_mask);
}