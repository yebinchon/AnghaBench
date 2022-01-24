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
struct snd_pcm_hw_params {int dummy; } ;
struct snd_mask {int dummy; } ;
struct snd_interval {int openmin; } ;
typedef  int /*<<< orphan*/  snd_pcm_hw_param_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct snd_interval* FUNC2 (struct snd_pcm_hw_params const*,int /*<<< orphan*/ ) ; 
 struct snd_mask* FUNC3 (struct snd_pcm_hw_params const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_interval const*) ; 
 int FUNC5 (struct snd_interval const*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_mask const*) ; 
 int FUNC7 (struct snd_mask const*) ; 

int FUNC8(const struct snd_pcm_hw_params *params,
			   snd_pcm_hw_param_t var, int *dir)
{
	if (FUNC1(var)) {
		const struct snd_mask *mask = FUNC3(params, var);
		if (!FUNC6(mask))
			return -EINVAL;
		if (dir)
			*dir = 0;
		return FUNC7(mask);
	}
	if (FUNC0(var)) {
		const struct snd_interval *i = FUNC2(params, var);
		if (!FUNC4(i))
			return -EINVAL;
		if (dir)
			*dir = i->openmin;
		return FUNC5(i);
	}
	return -EINVAL;
}