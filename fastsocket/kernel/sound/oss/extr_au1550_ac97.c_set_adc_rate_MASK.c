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
typedef  unsigned int u16 ;
struct dmabuf {int src_factor; int sample_rate; int num_channels; } ;
struct au1550_state {int /*<<< orphan*/  codec; scalar_t__ no_vra; struct dmabuf dma_dac; struct dmabuf dma_adc; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_EXTENDED_STATUS ; 
 unsigned int AC97_EXTSTAT_VRA ; 
 int /*<<< orphan*/  AC97_PCM_FRONT_DAC_RATE ; 
 int /*<<< orphan*/  AC97_PCM_LFE_DAC_RATE ; 
 int /*<<< orphan*/  AC97_PCM_LR_ADC_RATE ; 
 int /*<<< orphan*/  AC97_PCM_SURR_DAC_RATE ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void
FUNC3(struct au1550_state *s, unsigned rate)
{
	struct dmabuf  *adc = &s->dma_adc;
	struct dmabuf  *dac = &s->dma_dac;
	unsigned        adc_rate, dac_rate;
	u16             ac97_extstat;

	if (s->no_vra) {
		/* calc SRC factor
		*/
		adc->src_factor = ((96000 / rate) + 1) >> 1;
		adc->sample_rate = 48000 / adc->src_factor;
		return;
	}

	adc->src_factor = 1;

	ac97_extstat = FUNC1(s->codec, AC97_EXTENDED_STATUS);

	rate = rate > 48000 ? 48000 : rate;

	/* enable VRA
	*/
	FUNC2(s->codec, AC97_EXTENDED_STATUS,
		ac97_extstat | AC97_EXTSTAT_VRA);

	/* now write the sample rate
	*/
	FUNC2(s->codec, AC97_PCM_LR_ADC_RATE, (u16) rate);

	/* read it back for actual supported rate
	*/
	adc_rate = FUNC1(s->codec, AC97_PCM_LR_ADC_RATE);

	FUNC0("set_adc_rate: set to %d Hz\n", adc_rate);

	/* some codec's don't allow unequal DAC and ADC rates, in which case
	 * writing one rate reg actually changes both.
	 */
	dac_rate = FUNC1(s->codec, AC97_PCM_FRONT_DAC_RATE);
	if (dac->num_channels > 2)
		FUNC2(s->codec, AC97_PCM_SURR_DAC_RATE, dac_rate);
	if (dac->num_channels > 4)
		FUNC2(s->codec, AC97_PCM_LFE_DAC_RATE, dac_rate);

	adc->sample_rate = adc_rate;
	dac->sample_rate = dac_rate;
}