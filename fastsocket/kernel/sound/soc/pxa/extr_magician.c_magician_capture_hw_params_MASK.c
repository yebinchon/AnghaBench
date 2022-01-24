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
 int /*<<< orphan*/  PXA2XX_I2S_SYSCLK ; 
 int /*<<< orphan*/  SND_SOC_CLOCK_OUT ; 
 int SND_SOC_DAIFMT_CBS_CFS ; 
 int SND_SOC_DAIFMT_MSB ; 
 int SND_SOC_DAIFMT_NB_NF ; 
 int FUNC0 (struct snd_soc_dai*,int) ; 
 int FUNC1 (struct snd_soc_dai*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream *substream,
				      struct snd_pcm_hw_params *params)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_dai *codec_dai = rtd->dai->codec_dai;
	struct snd_soc_dai *cpu_dai = rtd->dai->cpu_dai;
	int ret = 0;

	/* set codec DAI configuration */
	ret = FUNC0(codec_dai,
			SND_SOC_DAIFMT_MSB | SND_SOC_DAIFMT_NB_NF |
			SND_SOC_DAIFMT_CBS_CFS);
	if (ret < 0)
		return ret;

	/* set cpu DAI configuration */
	ret = FUNC0(cpu_dai,
			SND_SOC_DAIFMT_MSB | SND_SOC_DAIFMT_NB_NF |
			SND_SOC_DAIFMT_CBS_CFS);
	if (ret < 0)
		return ret;

	/* set the I2S system clock as output */
	ret = FUNC1(cpu_dai, PXA2XX_I2S_SYSCLK, 0,
			SND_SOC_CLOCK_OUT);
	if (ret < 0)
		return ret;

	return 0;
}