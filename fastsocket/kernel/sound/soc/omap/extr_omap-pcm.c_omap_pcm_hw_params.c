
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_2__* dai; } ;
struct snd_pcm_substream {int dma_buffer; struct snd_soc_pcm_runtime* private_data; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dma_bytes; struct omap_runtime_data* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct omap_runtime_data {int dma_ch; struct omap_pcm_dma_data* dma_data; } ;
struct omap_pcm_dma_data {int name; int dma_req; } ;
struct TYPE_4__ {TYPE_1__* cpu_dai; } ;
struct TYPE_3__ {struct omap_pcm_dma_data* dma_data; } ;


 int omap_dma_link_lch (int ,int ) ;
 int omap_pcm_dma_irq ;
 int omap_request_dma (int ,int ,int ,struct snd_pcm_substream*,int *) ;
 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int snd_pcm_set_runtime_buffer (struct snd_pcm_substream*,int *) ;

__attribute__((used)) static int omap_pcm_hw_params(struct snd_pcm_substream *substream,
         struct snd_pcm_hw_params *params)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct omap_runtime_data *prtd = runtime->private_data;
 struct omap_pcm_dma_data *dma_data = rtd->dai->cpu_dai->dma_data;
 int err = 0;



 if (!dma_data)
  return 0;

 snd_pcm_set_runtime_buffer(substream, &substream->dma_buffer);
 runtime->dma_bytes = params_buffer_bytes(params);

 if (prtd->dma_data)
  return 0;
 prtd->dma_data = dma_data;
 err = omap_request_dma(dma_data->dma_req, dma_data->name,
          omap_pcm_dma_irq, substream, &prtd->dma_ch);
 if (!err) {




  omap_dma_link_lch(prtd->dma_ch, prtd->dma_ch);
 }

 return err;
}
