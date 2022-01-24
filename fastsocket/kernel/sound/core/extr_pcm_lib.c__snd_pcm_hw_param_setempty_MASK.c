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
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_hw_params*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_hw_params*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(struct snd_pcm_hw_params *params,
				snd_pcm_hw_param_t var)
{
	if (FUNC1(var)) {
		FUNC6(FUNC3(params, var));
		params->cmask |= 1 << var;
		params->rmask |= 1 << var;
	} else if (FUNC0(var)) {
		FUNC5(FUNC2(params, var));
		params->cmask |= 1 << var;
		params->rmask |= 1 << var;
	} else {
		FUNC4();
	}
}