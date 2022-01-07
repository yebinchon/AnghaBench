
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {struct ssp_device* ssp; } ;
struct ssp_priv {int dai_fmt; TYPE_2__ dev; } ;
struct ssp_device {TYPE_3__* pdev; } ;
struct snd_soc_pcm_runtime {TYPE_1__* dai; } ;
struct snd_soc_dai {scalar_t__ dma_data; struct ssp_priv* private_data; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_4__ {struct snd_soc_dai* cpu_dai; } ;


 int EINVAL ;



 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int SND_SOC_DAIFMT_FORMAT_MASK ;

 int SSCR0 ;
 int SSCR0_DSS ;
 int SSCR0_DataSize (int) ;
 int SSCR0_EDSS ;
 int SSCR0_FPCKE ;
 int SSCR0_MOD ;
 int SSCR0_SSE ;
 int SSPSP ;
 int SSPSP_DMYSTOP (int) ;
 int SSPSP_DMYSTRT (int) ;
 int SSPSP_EDMYSTOP (int) ;
 int SSPSP_SFRMDLY (int) ;
 int SSPSP_SFRMWDTH (int) ;
 int SSTSA ;
 int cpu_is_pxa3xx () ;
 int dev_err (int *,char*) ;
 int dump_registers (struct ssp_device*) ;
 int kfree (scalar_t__) ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int params_format (struct snd_pcm_hw_params*) ;
 int snd_pcm_format_physical_width (int) ;
 scalar_t__ ssp_get_dma_params (struct ssp_device*,int,int) ;
 int ssp_get_scr (struct ssp_device*) ;
 int ssp_read_reg (struct ssp_device*,int ) ;
 int ssp_write_reg (struct ssp_device*,int ,int) ;

__attribute__((used)) static int pxa_ssp_hw_params(struct snd_pcm_substream *substream,
    struct snd_pcm_hw_params *params,
    struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *cpu_dai = rtd->dai->cpu_dai;
 struct ssp_priv *priv = cpu_dai->private_data;
 struct ssp_device *ssp = priv->dev.ssp;
 int chn = params_channels(params);
 u32 sscr0;
 u32 sspsp;
 int width = snd_pcm_format_physical_width(params_format(params));
 int ttsa = ssp_read_reg(ssp, SSTSA) & 0xf;


 if (cpu_dai->dma_data)
  kfree(cpu_dai->dma_data);





 cpu_dai->dma_data = ssp_get_dma_params(ssp,
   ((chn == 2) && (ttsa != 1)) || (width == 32),
   substream->stream == SNDRV_PCM_STREAM_PLAYBACK);


 if (ssp_read_reg(ssp, SSCR0) & SSCR0_SSE)
  return 0;


 sscr0 = ssp_read_reg(ssp, SSCR0) & ~(SSCR0_DSS | SSCR0_EDSS);
 ssp_write_reg(ssp, SSCR0, sscr0);


 sscr0 = ssp_read_reg(ssp, SSCR0);
 switch (params_format(params)) {
 case 131:




  sscr0 |= SSCR0_DataSize(16);
  break;
 case 130:
  sscr0 |= (SSCR0_EDSS | SSCR0_DataSize(8));
  break;
 case 129:
  sscr0 |= (SSCR0_EDSS | SSCR0_DataSize(16));
  break;
 }
 ssp_write_reg(ssp, SSCR0, sscr0);

 switch (priv->dai_fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 128:
        sspsp = ssp_read_reg(ssp, SSPSP);

  if ((ssp_get_scr(ssp) == 4) && (width == 16)) {
   return -EINVAL;

  } else {






   sspsp |= SSPSP_SFRMWDTH(width + 1);
   sspsp |= SSPSP_SFRMDLY((width + 1) * 2);
   sspsp |= SSPSP_DMYSTRT(1);
  }

  ssp_write_reg(ssp, SSPSP, sspsp);
  break;
 default:
  break;
 }




 if ((sscr0 & SSCR0_MOD) && !ttsa) {
  dev_err(&ssp->pdev->dev, "No TDM timeslot configured\n");
  return -EINVAL;
 }

 dump_registers(ssp);

 return 0;
}
