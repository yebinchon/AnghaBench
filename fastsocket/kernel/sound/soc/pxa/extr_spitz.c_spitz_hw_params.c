
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {struct snd_soc_dai* cpu_dai; struct snd_soc_dai* codec_dai; } ;


 int PXA2XX_I2S_SYSCLK ;
 int SND_SOC_CLOCK_IN ;
 int SND_SOC_DAIFMT_CBS_CFS ;
 int SND_SOC_DAIFMT_I2S ;
 int SND_SOC_DAIFMT_NB_NF ;
 int WM8750_SYSCLK ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int snd_soc_dai_set_fmt (struct snd_soc_dai*,int) ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,unsigned int,int ) ;

__attribute__((used)) static int spitz_hw_params(struct snd_pcm_substream *substream,
 struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *codec_dai = rtd->dai->codec_dai;
 struct snd_soc_dai *cpu_dai = rtd->dai->cpu_dai;
 unsigned int clk = 0;
 int ret = 0;

 switch (params_rate(params)) {
 case 8000:
 case 16000:
 case 48000:
 case 96000:
  clk = 12288000;
  break;
 case 11025:
 case 22050:
 case 44100:
  clk = 11289600;
  break;
 }


 ret = snd_soc_dai_set_fmt(codec_dai, SND_SOC_DAIFMT_I2S |
  SND_SOC_DAIFMT_NB_NF | SND_SOC_DAIFMT_CBS_CFS);
 if (ret < 0)
  return ret;


 ret = snd_soc_dai_set_fmt(cpu_dai, SND_SOC_DAIFMT_I2S |
  SND_SOC_DAIFMT_NB_NF | SND_SOC_DAIFMT_CBS_CFS);
 if (ret < 0)
  return ret;


 ret = snd_soc_dai_set_sysclk(codec_dai, WM8750_SYSCLK, clk,
  SND_SOC_CLOCK_IN);
 if (ret < 0)
  return ret;


 ret = snd_soc_dai_set_sysclk(cpu_dai, PXA2XX_I2S_SYSCLK, 0,
  SND_SOC_CLOCK_IN);
 if (ret < 0)
  return ret;

 return 0;
}
