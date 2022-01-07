
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


 int PXA_SSP_AUDIO_DIV_ACDS ;
 int PXA_SSP_AUDIO_DIV_SCDB ;
 int PXA_SSP_CLK_AUDIO ;
 unsigned int PXA_SSP_CLK_AUDIO_DIV_1 ;
 unsigned int PXA_SSP_CLK_AUDIO_DIV_16 ;
 unsigned int PXA_SSP_CLK_AUDIO_DIV_2 ;
 unsigned int PXA_SSP_CLK_AUDIO_DIV_4 ;
 unsigned int PXA_SSP_CLK_AUDIO_DIV_8 ;
 unsigned int PXA_SSP_CLK_SCDB_1 ;
 unsigned int PXA_SSP_CLK_SCDB_4 ;
 int SND_SOC_CLOCK_OUT ;
 int SND_SOC_DAIFMT_CBS_CFS ;
 int SND_SOC_DAIFMT_DSP_A ;
 int SND_SOC_DAIFMT_MSB ;
 int SND_SOC_DAIFMT_NB_IF ;
 int SND_SOC_DAIFMT_NB_NF ;
 int params_format (struct snd_pcm_hw_params*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 unsigned int snd_pcm_format_physical_width (int ) ;
 int snd_soc_dai_set_clkdiv (struct snd_soc_dai*,int ,unsigned int) ;
 int snd_soc_dai_set_fmt (struct snd_soc_dai*,int) ;
 int snd_soc_dai_set_pll (struct snd_soc_dai*,int ,int ,unsigned int) ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,int ,int ) ;
 int snd_soc_dai_set_tdm_slot (struct snd_soc_dai*,int,int ,int,unsigned int) ;

__attribute__((used)) static int magician_playback_hw_params(struct snd_pcm_substream *substream,
           struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *codec_dai = rtd->dai->codec_dai;
 struct snd_soc_dai *cpu_dai = rtd->dai->cpu_dai;
 unsigned int acps, acds, width, rate;
 unsigned int div4 = PXA_SSP_CLK_SCDB_4;
 int ret = 0;

 rate = params_rate(params);
 width = snd_pcm_format_physical_width(params_format(params));





 switch (params_rate(params)) {
 case 8000:

  acps = 32842000;
  switch (width) {
  case 16:

   acds = PXA_SSP_CLK_AUDIO_DIV_16;
   break;
  default:

   acds = PXA_SSP_CLK_AUDIO_DIV_8;
  }
  break;
 case 11025:
  acps = 5622000;
  switch (width) {
  case 16:

   acds = PXA_SSP_CLK_AUDIO_DIV_4;
   break;
  default:

   acds = PXA_SSP_CLK_AUDIO_DIV_2;
  }
  break;
 case 22050:
  acps = 5622000;
  switch (width) {
  case 16:

   acds = PXA_SSP_CLK_AUDIO_DIV_2;
   break;
  default:

   acds = PXA_SSP_CLK_AUDIO_DIV_1;
  }
  break;
 case 44100:
  acps = 5622000;
  switch (width) {
  case 16:

   acds = PXA_SSP_CLK_AUDIO_DIV_2;
   break;
  default:

   acds = PXA_SSP_CLK_AUDIO_DIV_1;
  }
  break;
 case 48000:
  acps = 12235000;
  switch (width) {
  case 16:

   acds = PXA_SSP_CLK_AUDIO_DIV_2;
   break;
  default:

   acds = PXA_SSP_CLK_AUDIO_DIV_1;
  }
  break;
 case 96000:
 default:
  acps = 12235000;
  switch (width) {
  case 16:

   acds = PXA_SSP_CLK_AUDIO_DIV_1;
   break;
  default:

   acds = PXA_SSP_CLK_AUDIO_DIV_2;
   div4 = PXA_SSP_CLK_SCDB_1;
   break;
  }
  break;
 }


 ret = snd_soc_dai_set_fmt(codec_dai, SND_SOC_DAIFMT_MSB |
   SND_SOC_DAIFMT_NB_NF | SND_SOC_DAIFMT_CBS_CFS);
 if (ret < 0)
  return ret;


 ret = snd_soc_dai_set_fmt(cpu_dai, SND_SOC_DAIFMT_DSP_A |
   SND_SOC_DAIFMT_NB_IF | SND_SOC_DAIFMT_CBS_CFS);
 if (ret < 0)
  return ret;

 ret = snd_soc_dai_set_tdm_slot(cpu_dai, 1, 0, 1, width);
 if (ret < 0)
  return ret;


 ret = snd_soc_dai_set_sysclk(cpu_dai, PXA_SSP_CLK_AUDIO, 0,
   SND_SOC_CLOCK_OUT);
 if (ret < 0)
  return ret;


 ret = snd_soc_dai_set_clkdiv(cpu_dai,
   PXA_SSP_AUDIO_DIV_ACDS, acds);
 if (ret < 0)
  return ret;


 ret = snd_soc_dai_set_clkdiv(cpu_dai,
   PXA_SSP_AUDIO_DIV_SCDB, div4);
 if (ret < 0)
  return ret;


 ret = snd_soc_dai_set_pll(cpu_dai, 0, 0, acps);
 if (ret < 0)
  return ret;

 return 0;
}
