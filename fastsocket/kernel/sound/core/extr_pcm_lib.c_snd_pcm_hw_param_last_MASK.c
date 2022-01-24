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
struct snd_pcm_hw_params {scalar_t__ rmask; } ;
typedef  int /*<<< orphan*/  snd_pcm_hw_param_t ;

/* Variables and functions */
 int FUNC0 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (struct snd_pcm_substream*,struct snd_pcm_hw_params*) ; 

int FUNC4(struct snd_pcm_substream *pcm, 
			  struct snd_pcm_hw_params *params,
			  snd_pcm_hw_param_t var, int *dir)
{
	int changed = FUNC0(params, var);
	if (changed < 0)
		return changed;
	if (params->rmask) {
		int err = FUNC3(pcm, params);
		if (FUNC1(err < 0))
			return err;
	}
	return FUNC2(params, var, dir);
}