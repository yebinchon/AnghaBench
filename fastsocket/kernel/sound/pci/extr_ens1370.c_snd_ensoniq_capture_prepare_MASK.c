#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; int dma_addr; int /*<<< orphan*/  rate; int /*<<< orphan*/  format; } ;
struct TYPE_3__ {int pclkdiv_lock; } ;
struct TYPE_4__ {TYPE_1__ es1370; } ;
struct ensoniq {int c_dma_size; int c_period_size; int ctrl; int sctrl; int /*<<< orphan*/  reg_lock; TYPE_2__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADC_COUNT ; 
 int /*<<< orphan*/  ADC_FRAME ; 
 int /*<<< orphan*/  ADC_SIZE ; 
 int /*<<< orphan*/  CONTROL ; 
 int ES_1370_PCLKDIVM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ES_ADC_EN ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int ES_MODE_CAPTURE ; 
 int ES_MODE_PLAY2 ; 
 int /*<<< orphan*/  ES_PAGE_ADC ; 
 int ES_R1_INT_EN ; 
 int ES_R1_LOOP_SEL ; 
 int ES_R1_MODEM ; 
 int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct ensoniq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEM_PAGE ; 
 int /*<<< orphan*/  SERIAL ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int* snd_ensoniq_sample_shift ; 
 int /*<<< orphan*/  FUNC6 (struct ensoniq*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct snd_pcm_substream*) ; 
 int FUNC9 (struct snd_pcm_substream*) ; 
 struct ensoniq* FUNC10 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct snd_pcm_substream *substream)
{
	struct ensoniq *ensoniq = FUNC10(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	unsigned int mode = 0;

	ensoniq->c_dma_size = FUNC8(substream);
	ensoniq->c_period_size = FUNC9(substream);
	if (FUNC7(runtime->format) == 16)
		mode |= 0x02;
	if (runtime->channels > 1)
		mode |= 0x01;
	FUNC11(&ensoniq->reg_lock);
	ensoniq->ctrl &= ~ES_ADC_EN;
	FUNC5(ensoniq->ctrl, FUNC4(ensoniq, CONTROL));
	FUNC5(FUNC2(ES_PAGE_ADC), FUNC4(ensoniq, MEM_PAGE));
	FUNC5(runtime->dma_addr, FUNC4(ensoniq, ADC_FRAME));
	FUNC5((ensoniq->c_dma_size >> 2) - 1, FUNC4(ensoniq, ADC_SIZE));
	ensoniq->sctrl &= ~(ES_R1_LOOP_SEL | ES_R1_MODEM);
	ensoniq->sctrl |= ES_R1_INT_EN | FUNC3(mode);
	FUNC5(ensoniq->sctrl, FUNC4(ensoniq, SERIAL));
	FUNC5((ensoniq->c_period_size >> snd_ensoniq_sample_shift[mode]) - 1,
	     FUNC4(ensoniq, ADC_COUNT));
#ifdef CHIP1370
	if (!(ensoniq->u.es1370.pclkdiv_lock & ES_MODE_PLAY2)) {
		ensoniq->ctrl &= ~ES_1370_PCLKDIVM;
		ensoniq->ctrl |= ES_1370_PCLKDIVO(ES_1370_SRTODIV(runtime->rate));
		ensoniq->u.es1370.pclkdiv_lock |= ES_MODE_CAPTURE;
	}
#endif
	FUNC5(ensoniq->ctrl, FUNC4(ensoniq, CONTROL));
	FUNC12(&ensoniq->reg_lock);
#ifndef CHIP1370
	FUNC6(ensoniq, runtime->rate);
#endif
	return 0;
}