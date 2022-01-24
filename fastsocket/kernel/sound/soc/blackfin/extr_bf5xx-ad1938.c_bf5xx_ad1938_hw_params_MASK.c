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
struct TYPE_2__ {struct snd_soc_dai* codec_dai; struct snd_soc_dai* cpu_dai; } ;

/* Variables and functions */
 int SND_SOC_DAIFMT_CBM_CFM ; 
 int SND_SOC_DAIFMT_DSP_A ; 
 int SND_SOC_DAIFMT_IB_IF ; 
 int FUNC0 (struct snd_soc_dai*,int) ; 
 int FUNC1 (struct snd_soc_dai*,int,int) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream *substream,
	struct snd_pcm_hw_params *params)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_dai *cpu_dai = rtd->dai->cpu_dai;
	struct snd_soc_dai *codec_dai = rtd->dai->codec_dai;
	int ret = 0;
	/* set cpu DAI configuration */
	ret = FUNC0(cpu_dai, SND_SOC_DAIFMT_DSP_A |
		SND_SOC_DAIFMT_IB_IF | SND_SOC_DAIFMT_CBM_CFM);
	if (ret < 0)
		return ret;

	/* set codec DAI configuration */
	ret = FUNC0(codec_dai, SND_SOC_DAIFMT_DSP_A |
		SND_SOC_DAIFMT_IB_IF | SND_SOC_DAIFMT_CBM_CFM);
	if (ret < 0)
		return ret;

	/* set codec DAI slots, 8 channels, all channels are enabled */
	ret = FUNC1(codec_dai, 0xFF, 8);
	if (ret < 0)
		return ret;

	return 0;
}