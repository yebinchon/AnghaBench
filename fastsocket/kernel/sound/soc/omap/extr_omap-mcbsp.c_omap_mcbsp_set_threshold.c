
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* dai; } ;
struct snd_soc_dai {int private_data; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; } ;
struct omap_mcbsp_data {int bus_id; } ;
struct TYPE_2__ {struct snd_soc_dai* cpu_dai; } ;


 int MCBSP_DMA_MODE_THRESHOLD ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int omap_mcbsp_get_dma_op_mode (int ) ;
 int omap_mcbsp_set_rx_threshold (int ,int) ;
 int omap_mcbsp_set_tx_threshold (int ,int) ;
 int snd_pcm_lib_period_bytes (struct snd_pcm_substream*) ;
 struct omap_mcbsp_data* to_mcbsp (int ) ;

__attribute__((used)) static void omap_mcbsp_set_threshold(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *cpu_dai = rtd->dai->cpu_dai;
 struct omap_mcbsp_data *mcbsp_data = to_mcbsp(cpu_dai->private_data);
 int dma_op_mode = omap_mcbsp_get_dma_op_mode(mcbsp_data->bus_id);
 int samples;


 if (dma_op_mode == MCBSP_DMA_MODE_THRESHOLD)
  samples = snd_pcm_lib_period_bytes(substream) >> 1;
 else
  samples = 1;


 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  omap_mcbsp_set_tx_threshold(mcbsp_data->bus_id, samples - 1);
 else
  omap_mcbsp_set_rx_threshold(mcbsp_data->bus_id, samples - 1);
}
