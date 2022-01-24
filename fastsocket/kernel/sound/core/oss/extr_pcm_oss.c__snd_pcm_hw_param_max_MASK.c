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
struct snd_pcm_hw_params {int cmask; int rmask; } ;
typedef  int snd_pcm_hw_param_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_hw_params*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_hw_params*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_hw_params *params,
				 snd_pcm_hw_param_t var, unsigned int val,
				 int dir)
{
	int changed;
	int open = 0;
	if (dir) {
		if (dir < 0) {
			open = 1;
		} else if (dir > 0) {
			open = 1;
			val++;
		}
	}
	if (FUNC1(var)) {
		if (val == 0 && open) {
			FUNC5(FUNC3(params, var));
			changed = -EINVAL;
		} else
			changed = FUNC6(FUNC3(params, var),
						      val - !!open);
	} else if (FUNC0(var))
		changed = FUNC4(FUNC2(params, var),
						  val, open);
	else
		return -EINVAL;
	if (changed) {
		params->cmask |= 1 << var;
		params->rmask |= 1 << var;
	}
	return changed;
}