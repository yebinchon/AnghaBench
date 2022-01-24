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
struct snd_interval {scalar_t__ openmax; } ;
typedef  int /*<<< orphan*/  snd_pcm_hw_param_t ;

/* Variables and functions */
 unsigned int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct snd_interval* FUNC2 (struct snd_pcm_hw_params const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_hw_params const*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (struct snd_interval const*) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int
FUNC6(const struct snd_pcm_hw_params *params,
			   snd_pcm_hw_param_t var, int *dir)
{
	if (FUNC1(var)) {
		if (dir)
			*dir = 0;
		return FUNC5(FUNC3(params, var));
	}
	if (FUNC0(var)) {
		const struct snd_interval *i = FUNC2(params, var);
		if (dir)
			*dir = - (int) i->openmax;
		return FUNC4(i);
	}
	return -EINVAL;
}