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
typedef  int u8 ;
struct snd_pcm_hw_params {int dummy; } ;
struct oxygen {struct dg* model_data; } ;
struct dg {int* cs4245_regs; } ;

/* Variables and functions */
 size_t CS4245_ADC_CTRL ; 
 int CS4245_ADC_FM_DOUBLE ; 
 int CS4245_ADC_FM_MASK ; 
 int CS4245_ADC_FM_QUAD ; 
 int CS4245_ADC_FM_SINGLE ; 
 int /*<<< orphan*/  FUNC0 (struct oxygen*,size_t,int) ; 
 int FUNC1 (struct snd_pcm_hw_params*) ; 

__attribute__((used)) static void FUNC2(struct oxygen *chip,
				  struct snd_pcm_hw_params *params)
{
	struct dg *data = chip->model_data;
	u8 value;

	value = data->cs4245_regs[CS4245_ADC_CTRL] & ~CS4245_ADC_FM_MASK;
	if (FUNC1(params) <= 50000)
		value |= CS4245_ADC_FM_SINGLE;
	else if (FUNC1(params) <= 100000)
		value |= CS4245_ADC_FM_DOUBLE;
	else
		value |= CS4245_ADC_FM_QUAD;
	FUNC0(chip, CS4245_ADC_CTRL, value);
}