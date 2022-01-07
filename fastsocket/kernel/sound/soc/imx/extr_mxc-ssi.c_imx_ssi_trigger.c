
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_soc_pcm_runtime {TYPE_1__* dai; } ;
struct snd_soc_dai {scalar_t__ id; } ;
struct snd_pcm_substream {int stream; struct snd_soc_pcm_runtime* private_data; } ;
struct TYPE_2__ {struct snd_soc_dai* cpu_dai; } ;


 int EINVAL ;
 scalar_t__ IMX_DAI_SSI0 ;
 scalar_t__ IMX_DAI_SSI2 ;
 int SNDRV_PCM_STREAM_PLAYBACK ;






 int SSI1_SCR ;
 int SSI2_SCR ;
 int SSI_SCR_RE ;
 int SSI_SCR_SSIEN ;
 int SSI_SCR_TE ;

__attribute__((used)) static int imx_ssi_trigger(struct snd_pcm_substream *substream, int cmd,
   struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *cpu_dai = rtd->dai->cpu_dai;
 u32 scr;

 if (cpu_dai->id == IMX_DAI_SSI0 || cpu_dai->id == IMX_DAI_SSI2)
  scr = SSI1_SCR;
 else
  scr = SSI2_SCR;

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
   scr |= SSI_SCR_TE | SSI_SCR_SSIEN;
  else
   scr |= SSI_SCR_RE | SSI_SCR_SSIEN;
  break;
 case 128:
 case 129:
 case 133:
  if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
   scr &= ~SSI_SCR_TE;
  else
   scr &= ~SSI_SCR_RE;
  break;
 default:
  return -EINVAL;
 }

 if (cpu_dai->id == IMX_DAI_SSI0 || cpu_dai->id == IMX_DAI_SSI2)
  SSI1_SCR = scr;
 else
  SSI2_SCR = scr;

 return 0;
}
