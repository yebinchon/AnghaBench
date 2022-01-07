
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {struct snd_soc_dai* codec_dai; struct snd_soc_dai* cpu_dai; } ;


 int SND_SOC_DAIFMT_CBM_CFM ;
 int SND_SOC_DAIFMT_DSP_A ;
 int SND_SOC_DAIFMT_IB_IF ;
 int snd_soc_dai_set_fmt (struct snd_soc_dai*,int) ;

__attribute__((used)) static int bf5xx_ad1836_hw_params(struct snd_pcm_substream *substream,
 struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *cpu_dai = rtd->dai->cpu_dai;
 struct snd_soc_dai *codec_dai = rtd->dai->codec_dai;
 int ret = 0;

 ret = snd_soc_dai_set_fmt(cpu_dai, SND_SOC_DAIFMT_DSP_A |
  SND_SOC_DAIFMT_IB_IF | SND_SOC_DAIFMT_CBM_CFM);
 if (ret < 0)
  return ret;


 ret = snd_soc_dai_set_fmt(codec_dai, SND_SOC_DAIFMT_DSP_A |
  SND_SOC_DAIFMT_IB_IF | SND_SOC_DAIFMT_CBM_CFM);
 if (ret < 0)
  return ret;

 return 0;
}
