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
struct snd_soc_pcm_runtime {TYPE_1__* dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {struct snd_soc_dai* cpu_dai; struct snd_soc_dai* codec_dai; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PXA_SSP_CLK_AUDIO ; 
 int SND_SOC_DAIFMT_CBS_CFS ; 
 int SND_SOC_DAIFMT_I2S ; 
 int SND_SOC_DAIFMT_NB_NF ; 
 int /*<<< orphan*/  WM9713_PCMCLK_DIV ; 
 int /*<<< orphan*/  WM9713_PCMCLK_PLL_DIV ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 scalar_t__ clk_pout ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_hw_params*) ; 
 int FUNC2 (struct snd_pcm_hw_params*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_soc_dai*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct snd_soc_dai*,int) ; 
 int FUNC6 (struct snd_soc_dai*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC7 (struct snd_soc_dai*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream,
				    struct snd_pcm_hw_params *params)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_dai *codec_dai = rtd->dai->codec_dai;
	struct snd_soc_dai *cpu_dai = rtd->dai->cpu_dai;
	unsigned int pll_out = 0;
	unsigned int wm9713_div = 0;
	int ret = 0;
	int rate = FUNC2(params);
	int width = FUNC3(FUNC1(params));

	/* Only support ratios that we can generate neatly from the AC97
	 * based master clock - in particular, this excludes 44.1kHz.
	 * In most applications the voice DAC will be used for telephony
	 * data so multiples of 8kHz will be the common case.
	 */
	switch (rate) {
	case 8000:
		wm9713_div = 12;
		break;
	case 16000:
		wm9713_div = 6;
		break;
	case 48000:
		wm9713_div = 2;
		break;
	default:
		/* Don't support OSS emulation */
		return -EINVAL;
	}

	/* Add 1 to the width for the leading clock cycle */
	pll_out = rate * (width + 1) * 8;

	ret = FUNC7(cpu_dai, PXA_SSP_CLK_AUDIO, 0, 1);
	if (ret < 0)
		return ret;

	ret = FUNC6(cpu_dai, 0, 0, pll_out);
	if (ret < 0)
		return ret;

	if (clk_pout)
		ret = FUNC4(codec_dai, WM9713_PCMCLK_PLL_DIV,
					     FUNC0(wm9713_div));
	else
		ret = FUNC4(codec_dai, WM9713_PCMCLK_DIV,
					     FUNC0(wm9713_div));
	if (ret < 0)
		return ret;

	ret = FUNC5(codec_dai, SND_SOC_DAIFMT_I2S |
		SND_SOC_DAIFMT_NB_NF | SND_SOC_DAIFMT_CBS_CFS);
	if (ret < 0)
		return ret;

	ret = FUNC5(cpu_dai, SND_SOC_DAIFMT_I2S |
		SND_SOC_DAIFMT_NB_NF | SND_SOC_DAIFMT_CBS_CFS);
	if (ret < 0)
		return ret;

	return 0;
}