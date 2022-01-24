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
struct snd_cs46xx {int /*<<< orphan*/  spos_mutex; struct dsp_spos_instance* dsp_spos_instance; } ;
struct dsp_spos_instance {int /*<<< orphan*/ * adc_input; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_cs46xx*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4 (struct snd_cs46xx *chip)
{
	struct dsp_spos_instance * ins = chip->dsp_spos_instance;

	if (FUNC3(!ins->adc_input))
		return -EINVAL;

	FUNC1(&chip->spos_mutex);
	FUNC0 (chip,ins->adc_input);
	ins->adc_input = NULL;
	FUNC2(&chip->spos_mutex);

	return 0;
}