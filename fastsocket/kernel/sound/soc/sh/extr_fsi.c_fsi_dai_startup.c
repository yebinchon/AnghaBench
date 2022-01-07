
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_soc_dai {int dev; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct fsi_priv {int chan; int fifo_max; int dma_chan; } ;
struct TYPE_2__ {int clk; } ;


 int CKG1 ;
 int CKG2 ;
 int CR_FMT (int ) ;
 int CR_I2S ;
 int CR_MONO ;
 int CR_MONO_D ;
 int CR_PCM ;
 int CR_TDM ;
 int CR_TDM_D ;
 int DI_FMT ;
 int DO_FMT ;
 int EINVAL ;
 void* SH_FSI_GET_CH_I (int) ;
 void* SH_FSI_GET_CH_O (int) ;
 int SH_FSI_GET_IFMT (int) ;
 int SH_FSI_GET_OFMT (int) ;
 int SH_FSI_INVERSION_MASK ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int clk_enable (int ) ;
 int dev_dbg (int ,char*,char const*,int,int ) ;
 int dev_err (int ,char*) ;
 int fsi_clk_ctrl (struct fsi_priv*,int) ;
 struct fsi_priv* fsi_get (struct snd_pcm_substream*) ;
 int fsi_get_info_flags (struct fsi_priv*) ;
 int fsi_irq_init (struct fsi_priv*,int) ;
 int fsi_is_master_mode (struct fsi_priv*,int) ;
 int fsi_reg_mask_set (struct fsi_priv*,int ,int,int) ;
 int fsi_reg_write (struct fsi_priv*,int,int) ;
 TYPE_1__* master ;

__attribute__((used)) static int fsi_dai_startup(struct snd_pcm_substream *substream,
      struct snd_soc_dai *dai)
{
 struct fsi_priv *fsi = fsi_get(substream);
 const char *msg;
 u32 flags = fsi_get_info_flags(fsi);
 u32 fmt;
 u32 reg;
 u32 data;
 int is_play = (substream->stream == SNDRV_PCM_STREAM_PLAYBACK);
 int is_master;
 int ret = 0;

 clk_enable(master->clk);


 data = is_play ? (1 << 0) : (1 << 4);
 is_master = fsi_is_master_mode(fsi, is_play);
 if (is_master)
  fsi_reg_mask_set(fsi, CKG1, data, data);
 else
  fsi_reg_mask_set(fsi, CKG1, data, 0);


 data = 0;
 switch (SH_FSI_INVERSION_MASK & flags) {
 case 129:
  data = 1 << 12;
  break;
 case 137:
  data = 1 << 8;
  break;
 case 128:
  data = 1 << 4;
  break;
 case 136:
  data = 1 << 0;
  break;
 }
 fsi_reg_write(fsi, CKG2, data);


 data = 0;
 reg = is_play ? DO_FMT : DI_FMT;
 fmt = is_play ? SH_FSI_GET_OFMT(flags) : SH_FSI_GET_IFMT(flags);
 switch (fmt) {
 case 134:
  msg = "MONO";
  data = CR_FMT(CR_MONO);
  fsi->chan = 1;
  break;
 case 133:
  msg = "MONO Delay";
  data = CR_FMT(CR_MONO_D);
  fsi->chan = 1;
  break;
 case 132:
  msg = "PCM";
  data = CR_FMT(CR_PCM);
  fsi->chan = 2;
  break;
 case 135:
  msg = "I2S";
  data = CR_FMT(CR_I2S);
  fsi->chan = 2;
  break;
 case 131:
  msg = "TDM";
  data = CR_FMT(CR_TDM) | (fsi->chan - 1);
  fsi->chan = is_play ?
   SH_FSI_GET_CH_O(flags) : SH_FSI_GET_CH_I(flags);
  break;
 case 130:
  msg = "TDM Delay";
  data = CR_FMT(CR_TDM_D) | (fsi->chan - 1);
  fsi->chan = is_play ?
   SH_FSI_GET_CH_O(flags) : SH_FSI_GET_CH_I(flags);
  break;
 default:
  dev_err(dai->dev, "unknown format.\n");
  return -EINVAL;
 }

 switch (fsi->chan) {
 case 1:
  fsi->fifo_max = 256;
  break;
 case 2:
  fsi->fifo_max = 128;
  break;
 case 3:
 case 4:
  fsi->fifo_max = 64;
  break;
 case 5:
 case 6:
 case 7:
 case 8:
  fsi->fifo_max = 32;
  break;
 default:
  dev_err(dai->dev, "channel size error.\n");
  return -EINVAL;
 }

 fsi_reg_write(fsi, reg, data);
 dev_dbg(dai->dev, "use %s format (%d channel) use %d DMAC\n",
  msg, fsi->chan, fsi->dma_chan);




 if (is_master)
  fsi_clk_ctrl(fsi, 1);


 fsi_irq_init(fsi, is_play);

 return ret;
}
