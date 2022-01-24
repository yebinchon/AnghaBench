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
typedef  int u16 ;
struct dmabuf {int src_factor; int sample_rate; int num_channels; } ;
struct au1550_state {int /*<<< orphan*/  codec; scalar_t__ no_vra; struct dmabuf dma_adc; struct dmabuf dma_dac; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_EXTENDED_STATUS ; 
 int AC97_EXTSTAT_VRA ; 
 int /*<<< orphan*/  AC97_PCM_FRONT_DAC_RATE ; 
 int /*<<< orphan*/  AC97_PCM_LFE_DAC_RATE ; 
 int /*<<< orphan*/  AC97_PCM_LR_ADC_RATE ; 
 int /*<<< orphan*/  AC97_PCM_SURR_DAC_RATE ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct au1550_state *s, unsigned rate)
{
	struct dmabuf  *dac = &s->dma_dac;
	struct dmabuf  *adc = &s->dma_adc;
	unsigned        adc_rate, dac_rate;
	u16             ac97_extstat;

	if (s->no_vra) {
		/* calc SRC factor
		*/
		dac->src_factor = ((96000 / rate) + 1) >> 1;
		dac->sample_rate = 48000 / dac->src_factor;
		return;
	}

	dac->src_factor = 1;

	ac97_extstat = FUNC1(s->codec, AC97_EXTENDED_STATUS);

	rate = rate > 48000 ? 48000 : rate;

	/* enable VRA
	*/
	FUNC2(s->codec, AC97_EXTENDED_STATUS,
		ac97_extstat | AC97_EXTSTAT_VRA);

	/* now write the sample rate
	*/
	FUNC2(s->codec, AC97_PCM_FRONT_DAC_RATE, (u16) rate);

	/* I don't support different sample rates for multichannel,
	 * so make these channels the same.
	 */
	if (dac->num_channels > 2)
		FUNC2(s->codec, AC97_PCM_SURR_DAC_RATE, (u16) rate);
	if (dac->num_channels > 4)
		FUNC2(s->codec, AC97_PCM_LFE_DAC_RATE, (u16) rate);
	/* read it back for actual supported rate
	*/
	dac_rate = FUNC1(s->codec, AC97_PCM_FRONT_DAC_RATE);

	FUNC0("set_dac_rate: set to %d Hz\n", dac_rate);

	/* some codec's don't allow unequal DAC and ADC rates, in which case
	 * writing one rate reg actually changes both.
	 */
	adc_rate = FUNC1(s->codec, AC97_PCM_LR_ADC_RATE);

	dac->sample_rate = dac_rate;
	adc->sample_rate = adc_rate;
}