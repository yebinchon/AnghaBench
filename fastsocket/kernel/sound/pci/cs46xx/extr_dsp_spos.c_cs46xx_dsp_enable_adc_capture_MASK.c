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
struct dsp_spos_instance {int adc_input; int /*<<< orphan*/  codec_in_scb; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PCMSERIALIN_SCB_ADDR ; 
 int FUNC0 (struct snd_cs46xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4 (struct snd_cs46xx *chip)
{
	struct dsp_spos_instance * ins = chip->dsp_spos_instance;

	if (FUNC3(ins->adc_input))
		return -EINVAL;
	if (FUNC3(!ins->codec_in_scb))
		return -EINVAL;

	FUNC1(&chip->spos_mutex);
	ins->adc_input = FUNC0(chip,ins->codec_in_scb,PCMSERIALIN_SCB_ADDR,
						  "PCMSerialInput_ADC");
	FUNC2(&chip->spos_mutex);

	return 0;
}