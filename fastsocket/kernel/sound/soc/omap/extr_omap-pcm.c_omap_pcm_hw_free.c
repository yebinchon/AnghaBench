
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct omap_runtime_data* private_data; } ;
struct omap_runtime_data {int * dma_data; int dma_ch; } ;


 int omap_dma_unlink_lch (int ,int ) ;
 int omap_free_dma (int ) ;
 int snd_pcm_set_runtime_buffer (struct snd_pcm_substream*,int *) ;

__attribute__((used)) static int omap_pcm_hw_free(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct omap_runtime_data *prtd = runtime->private_data;

 if (prtd->dma_data == ((void*)0))
  return 0;

 omap_dma_unlink_lch(prtd->dma_ch, prtd->dma_ch);
 omap_free_dma(prtd->dma_ch);
 prtd->dma_data = ((void*)0);

 snd_pcm_set_runtime_buffer(substream, ((void*)0));

 return 0;
}
