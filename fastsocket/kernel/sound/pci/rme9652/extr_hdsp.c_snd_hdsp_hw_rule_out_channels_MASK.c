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
struct snd_pcm_hw_rule {struct hdsp* private; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {int dummy; } ;
struct hdsp {scalar_t__ io_type; unsigned int qs_out_channels; unsigned int ds_out_channels; unsigned int ss_out_channels; } ;

/* Variables and functions */
 scalar_t__ H9632 ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 struct snd_interval* FUNC0 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_interval*,int,unsigned int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_hw_params *params,
					struct snd_pcm_hw_rule *rule)
{
	unsigned int list[3];
	struct hdsp *hdsp = rule->private;
	struct snd_interval *c = FUNC0(params, SNDRV_PCM_HW_PARAM_CHANNELS);
	if (hdsp->io_type == H9632) {
		list[0] = hdsp->qs_out_channels;
		list[1] = hdsp->ds_out_channels;
		list[2] = hdsp->ss_out_channels;
		return FUNC1(c, 3, list, 0);
	} else {
		list[0] = hdsp->ds_out_channels;
		list[1] = hdsp->ss_out_channels;
	}
	return FUNC1(c, 2, list, 0);
}