
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct snd_soc_pcm_runtime {TYPE_2__* dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct s3c24xx_pcm_dma_params {int channel; } ;
struct TYPE_6__ {scalar_t__ regs; } ;
struct TYPE_5__ {TYPE_1__* cpu_dai; } ;
struct TYPE_4__ {scalar_t__ dma_data; } ;


 int S3C2410_DMAOP_STARTED ;
 scalar_t__ S3C_AC97_GLBCTRL ;
 int S3C_AC97_GLBCTRL_PCMINTM_DMA ;
 int S3C_AC97_GLBCTRL_PCMINTM_MASK ;






 int readl (scalar_t__) ;
 int s3c2410_dma_ctrl (int,int ) ;
 TYPE_3__ s3c24xx_ac97 ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int s3c2443_ac97_mic_trigger(struct snd_pcm_substream *substream,
        int cmd, struct snd_soc_dai *dai)
{
 u32 ac_glbctrl;
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 int channel = ((struct s3c24xx_pcm_dma_params *)
    rtd->dai->cpu_dai->dma_data)->channel;

 ac_glbctrl = readl(s3c24xx_ac97.regs + S3C_AC97_GLBCTRL);
 switch (cmd) {
 case 130:
 case 131:
 case 132:
  ac_glbctrl |= S3C_AC97_GLBCTRL_PCMINTM_DMA;
  break;
 case 129:
 case 128:
 case 133:
  ac_glbctrl &= ~S3C_AC97_GLBCTRL_PCMINTM_MASK;
 }
 writel(ac_glbctrl, s3c24xx_ac97.regs + S3C_AC97_GLBCTRL);

 s3c2410_dma_ctrl(channel, S3C2410_DMAOP_STARTED);

 return 0;
}
