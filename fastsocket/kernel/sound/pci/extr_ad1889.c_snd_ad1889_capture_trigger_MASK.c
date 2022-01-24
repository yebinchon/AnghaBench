#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int reg; } ;
struct snd_ad1889 {TYPE_1__ ramc; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD_CHAN_ADC ; 
 int /*<<< orphan*/  AD_DMA_ADC ; 
 int /*<<< orphan*/  AD_DMA_CHSS ; 
 int /*<<< orphan*/  AD_DMA_CHSS_ADCS ; 
 int AD_DMA_IM_CNT ; 
 int AD_DMA_LOOP ; 
 int /*<<< orphan*/  AD_DS_RAMC ; 
 int AD_DS_RAMC_ADEN ; 
 int EINVAL ; 
#define  SNDRV_PCM_TRIGGER_START 129 
#define  SNDRV_PCM_TRIGGER_STOP 128 
 int /*<<< orphan*/  FUNC0 (struct snd_ad1889*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_ad1889*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ad1889*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ad1889*,int /*<<< orphan*/ ,int) ; 
 struct snd_ad1889* FUNC4 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int
FUNC5(struct snd_pcm_substream *ss, int cmd)
{
	u16 ramc;
	struct snd_ad1889 *chip = FUNC4(ss);

	ramc = FUNC1(chip, AD_DS_RAMC);
	
	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
		/* enable DMA loop & interrupts */
		FUNC3(chip, AD_DMA_ADC, AD_DMA_LOOP | AD_DMA_IM_CNT);
		ramc |= AD_DS_RAMC_ADEN;
		/* 1 to clear CHSS bit */
		FUNC2(chip, AD_DMA_CHSS, AD_DMA_CHSS_ADCS);
		break;
	case SNDRV_PCM_TRIGGER_STOP:
		ramc &= ~AD_DS_RAMC_ADEN;
		break;
	default:
		return -EINVAL;
	}
	
	chip->ramc.reg = ramc;
	FUNC3(chip, AD_DS_RAMC, ramc);	
	FUNC1(chip, AD_DS_RAMC);	/* flush */
	
	/* reset the chip when STOP - will disable IRQs */
	if (cmd == SNDRV_PCM_TRIGGER_STOP)
		FUNC0(chip, AD_CHAN_ADC);
		
	return 0;
}