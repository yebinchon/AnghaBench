
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct ssp_device* ssp; } ;
struct ssp_priv {TYPE_2__ dev; } ;
struct ssp_device {int dummy; } ;
struct snd_soc_pcm_runtime {TYPE_1__* dai; } ;
struct snd_soc_dai {struct ssp_priv* private_data; } ;
struct snd_pcm_substream {int stream; struct snd_soc_pcm_runtime* private_data; } ;
struct TYPE_4__ {struct snd_soc_dai* cpu_dai; } ;


 int EINVAL ;
 int SNDRV_PCM_STREAM_PLAYBACK ;






 int SSCR1 ;
 int SSCR1_RSRE ;
 int SSCR1_TSRE ;
 int SSSR ;
 int dump_registers (struct ssp_device*) ;
 int ssp_disable (TYPE_2__*) ;
 int ssp_enable (TYPE_2__*) ;
 int ssp_read_reg (struct ssp_device*,int ) ;
 int ssp_write_reg (struct ssp_device*,int ,int) ;

__attribute__((used)) static int pxa_ssp_trigger(struct snd_pcm_substream *substream, int cmd,
      struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *cpu_dai = rtd->dai->cpu_dai;
 int ret = 0;
 struct ssp_priv *priv = cpu_dai->private_data;
 struct ssp_device *ssp = priv->dev.ssp;
 int val;

 switch (cmd) {
 case 131:
  ssp_enable(&priv->dev);
  break;
 case 132:
  val = ssp_read_reg(ssp, SSCR1);
  if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
   val |= SSCR1_TSRE;
  else
   val |= SSCR1_RSRE;
  ssp_write_reg(ssp, SSCR1, val);
  val = ssp_read_reg(ssp, SSSR);
  ssp_write_reg(ssp, SSSR, val);
  break;
 case 130:
  val = ssp_read_reg(ssp, SSCR1);
  if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
   val |= SSCR1_TSRE;
  else
   val |= SSCR1_RSRE;
  ssp_write_reg(ssp, SSCR1, val);
  ssp_enable(&priv->dev);
  break;
 case 129:
  val = ssp_read_reg(ssp, SSCR1);
  if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
   val &= ~SSCR1_TSRE;
  else
   val &= ~SSCR1_RSRE;
  ssp_write_reg(ssp, SSCR1, val);
  break;
 case 128:
  ssp_disable(&priv->dev);
  break;
 case 133:
  val = ssp_read_reg(ssp, SSCR1);
  if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
   val &= ~SSCR1_TSRE;
  else
   val &= ~SSCR1_RSRE;
  ssp_write_reg(ssp, SSCR1, val);
  break;

 default:
  ret = -EINVAL;
 }

 dump_registers(ssp);

 return ret;
}
