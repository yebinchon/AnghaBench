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
struct snd_pcm_hw_rule {struct hdspm* private; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {int dummy; } ;
struct hdspm {unsigned int qs_channels; unsigned int ds_channels; unsigned int ss_channels; scalar_t__ is_aes32; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 struct snd_interval* FUNC0 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_interval*,int,unsigned int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_hw_params *params,
				      struct snd_pcm_hw_rule *rule)
{
	unsigned int list[3];
	struct hdspm *hdspm = rule->private;
	struct snd_interval *c = FUNC0(params,
			SNDRV_PCM_HW_PARAM_CHANNELS);
	if (hdspm->is_aes32) {
		list[0] = hdspm->qs_channels;
		list[1] = hdspm->ds_channels;
		list[2] = hdspm->ss_channels;
		return FUNC1(c, 3, list, 0);
	} else {
		list[0] = hdspm->ds_channels;
		list[1] = hdspm->ss_channels;
		return FUNC1(c, 2, list, 0);
	}
}