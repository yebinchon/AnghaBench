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
struct ensoniq {int p2_dma_size; int p2_period_size; int ctrl; int sctrl; int /*<<< orphan*/  reg_lock; TYPE_2__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTROL ; 
 int /*<<< orphan*/  DAC2_COUNT ; 
 int /*<<< orphan*/  DAC2_FRAME ; 
 int /*<<< orphan*/  DAC2_SIZE ; 
 int ES_1370_PCLKDIVM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ES_DAC2_EN ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int ES_MODE_CAPTURE ; 
 int ES_MODE_PLAY2 ; 
 int ES_P2_DAC_SEN ; 
 int ES_P2_END_INCM ; 
 int FUNC3 (int) ; 
 int ES_P2_INT_EN ; 
 int ES_P2_LOOP_SEL ; 
 int ES_P2_MODEM ; 
 int FUNC4 (unsigned int) ; 
 int ES_P2_PAUSE ; 
 int ES_P2_ST_INCM ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ES_PAGE_DAC ; 
 int /*<<< orphan*/  FUNC6 (struct ensoniq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEM_PAGE ; 
 int /*<<< orphan*/  SERIAL ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int* snd_ensoniq_sample_shift ; 
 int /*<<< orphan*/  FUNC8 (struct ensoniq*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct snd_pcm_substream*) ; 
 int FUNC11 (struct snd_pcm_substream*) ; 
 struct ensoniq* FUNC12 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct snd_pcm_substream *substream)
{
	struct ensoniq *ensoniq = FUNC12(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	unsigned int mode = 0;

	ensoniq->p2_dma_size = FUNC10(substream);
	ensoniq->p2_period_size = FUNC11(substream);
	if (FUNC9(runtime->format) == 16)
		mode |= 0x02;
	if (runtime->channels > 1)
		mode |= 0x01;
	FUNC13(&ensoniq->reg_lock);
	ensoniq->ctrl &= ~ES_DAC2_EN;
	FUNC7(ensoniq->ctrl, FUNC6(ensoniq, CONTROL));
	FUNC7(FUNC2(ES_PAGE_DAC), FUNC6(ensoniq, MEM_PAGE));
	FUNC7(runtime->dma_addr, FUNC6(ensoniq, DAC2_FRAME));
	FUNC7((ensoniq->p2_dma_size >> 2) - 1, FUNC6(ensoniq, DAC2_SIZE));
	ensoniq->sctrl &= ~(ES_P2_LOOP_SEL | ES_P2_PAUSE | ES_P2_DAC_SEN |
			    ES_P2_END_INCM | ES_P2_ST_INCM | ES_P2_MODEM);
	ensoniq->sctrl |= ES_P2_INT_EN | FUNC4(mode) |
			  FUNC3(mode & 2 ? 2 : 1) | FUNC5(0);
	FUNC7(ensoniq->sctrl, FUNC6(ensoniq, SERIAL));
	FUNC7((ensoniq->p2_period_size >> snd_ensoniq_sample_shift[mode]) - 1,
	     FUNC6(ensoniq, DAC2_COUNT));
#ifdef CHIP1370
	if (!(ensoniq->u.es1370.pclkdiv_lock & ES_MODE_CAPTURE)) {
		ensoniq->ctrl &= ~ES_1370_PCLKDIVM;
		ensoniq->ctrl |= ES_1370_PCLKDIVO(ES_1370_SRTODIV(runtime->rate));
		ensoniq->u.es1370.pclkdiv_lock |= ES_MODE_PLAY2;
	}
#endif
	FUNC7(ensoniq->ctrl, FUNC6(ensoniq, CONTROL));
	FUNC14(&ensoniq->reg_lock);
#ifndef CHIP1370
	FUNC8(ensoniq, runtime->rate);
#endif
	return 0;
}