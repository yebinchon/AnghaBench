
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* dai; } ;
struct snd_soc_dai {int id; TYPE_2__* dma_data; int private_data; } ;
struct snd_pcm_substream {size_t stream; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct omap_mcbsp_reg_cfg {int srgr1; int srgr2; int xcr1; int xcr2; int rcr1; int rcr2; } ;
struct omap_mcbsp_data {int bus_id; int configured; unsigned int fmt; struct omap_mcbsp_reg_cfg regs; } ;
struct TYPE_4__ {char* name; int dma_req; unsigned long port_addr; int sync_mode; int set_threshold; } ;
struct TYPE_3__ {struct snd_soc_dai* cpu_dai; } ;


 int EINVAL ;
 int ENODEV ;
 int FPER (int) ;
 int FWID (int) ;
 scalar_t__ MCBSP_DMA_MODE_THRESHOLD ;
 int OMAP_DMA_SYNC_ELEMENT ;
 int OMAP_DMA_SYNC_FRAME ;
 int OMAP_MCBSP_WORD_16 ;
 int RFRLEN1 (int) ;
 int RFRLEN2 (int) ;
 int RPHASE ;
 int RWDLEN1 (int ) ;
 int RWDLEN2 (int ) ;



 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;

 int XFRLEN1 (int) ;
 int XFRLEN2 (int) ;
 int XPHASE ;
 int XWDLEN1 (int ) ;
 int XWDLEN2 (int ) ;
 scalar_t__ cpu_class_is_omap1 () ;
 scalar_t__ cpu_is_omap2420 () ;
 scalar_t__ cpu_is_omap2430 () ;
 scalar_t__ cpu_is_omap343x () ;
 int** omap1_dma_reqs ;
 unsigned long** omap1_mcbsp_port ;
 unsigned long** omap2420_mcbsp_port ;
 unsigned long** omap2430_mcbsp_port ;
 int** omap24xx_dma_reqs ;
 unsigned long** omap34xx_mcbsp_port ;
 int omap_mcbsp_config (int,struct omap_mcbsp_reg_cfg*) ;
 TYPE_2__** omap_mcbsp_dai_dma_params ;
 scalar_t__ omap_mcbsp_get_dma_op_mode (int) ;
 int omap_mcbsp_set_threshold ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int params_format (struct snd_pcm_hw_params*) ;
 struct omap_mcbsp_data* to_mcbsp (int ) ;

__attribute__((used)) static int omap_mcbsp_dai_hw_params(struct snd_pcm_substream *substream,
        struct snd_pcm_hw_params *params,
        struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *cpu_dai = rtd->dai->cpu_dai;
 struct omap_mcbsp_data *mcbsp_data = to_mcbsp(cpu_dai->private_data);
 struct omap_mcbsp_reg_cfg *regs = &mcbsp_data->regs;
 int dma, bus_id = mcbsp_data->bus_id, id = cpu_dai->id;
 int wlen, channels, wpf, sync_mode = OMAP_DMA_SYNC_ELEMENT;
 unsigned long port;
 unsigned int format;

 if (cpu_class_is_omap1()) {
  dma = omap1_dma_reqs[bus_id][substream->stream];
  port = omap1_mcbsp_port[bus_id][substream->stream];
 } else if (cpu_is_omap2420()) {
  dma = omap24xx_dma_reqs[bus_id][substream->stream];
  port = omap2420_mcbsp_port[bus_id][substream->stream];
 } else if (cpu_is_omap2430()) {
  dma = omap24xx_dma_reqs[bus_id][substream->stream];
  port = omap2430_mcbsp_port[bus_id][substream->stream];
 } else if (cpu_is_omap343x()) {
  dma = omap24xx_dma_reqs[bus_id][substream->stream];
  port = omap34xx_mcbsp_port[bus_id][substream->stream];
  omap_mcbsp_dai_dma_params[id][substream->stream].set_threshold =
      omap_mcbsp_set_threshold;

  if (omap_mcbsp_get_dma_op_mode(bus_id) ==
      MCBSP_DMA_MODE_THRESHOLD)
   sync_mode = OMAP_DMA_SYNC_FRAME;
 } else {
  return -ENODEV;
 }
 omap_mcbsp_dai_dma_params[id][substream->stream].name =
  substream->stream ? "Audio Capture" : "Audio Playback";
 omap_mcbsp_dai_dma_params[id][substream->stream].dma_req = dma;
 omap_mcbsp_dai_dma_params[id][substream->stream].port_addr = port;
 omap_mcbsp_dai_dma_params[id][substream->stream].sync_mode = sync_mode;
 cpu_dai->dma_data = &omap_mcbsp_dai_dma_params[id][substream->stream];

 if (mcbsp_data->configured) {

  return 0;
 }

 format = mcbsp_data->fmt & SND_SOC_DAIFMT_FORMAT_MASK;
 wpf = channels = params_channels(params);
 switch (channels) {
 case 2:
  if (format == 128) {

   regs->rcr2 |= RPHASE;
   regs->xcr2 |= XPHASE;

   wpf--;
   regs->rcr2 |= RFRLEN2(wpf - 1);
   regs->xcr2 |= XFRLEN2(wpf - 1);
  }
 case 1:
 case 4:

  regs->rcr1 |= RFRLEN1(wpf - 1);
  regs->xcr1 |= XFRLEN1(wpf - 1);
  break;
 default:

  return -EINVAL;
 }

 switch (params_format(params)) {
 case 131:

  wlen = 16;
  regs->rcr2 |= RWDLEN2(OMAP_MCBSP_WORD_16);
  regs->rcr1 |= RWDLEN1(OMAP_MCBSP_WORD_16);
  regs->xcr2 |= XWDLEN2(OMAP_MCBSP_WORD_16);
  regs->xcr1 |= XWDLEN1(OMAP_MCBSP_WORD_16);
  break;
 default:

  return -EINVAL;
 }


 switch (format) {
 case 128:
  regs->srgr2 |= FPER(wlen * channels - 1);
  regs->srgr1 |= FWID(wlen - 1);
  break;
 case 130:
 case 129:
  regs->srgr2 |= FPER(wlen * channels - 1);
  regs->srgr1 |= FWID(0);
  break;
 }

 omap_mcbsp_config(bus_id, &mcbsp_data->regs);
 mcbsp_data->configured = 1;

 return 0;
}
