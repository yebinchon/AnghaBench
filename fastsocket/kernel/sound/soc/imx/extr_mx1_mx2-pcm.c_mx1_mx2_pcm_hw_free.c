
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct mx1_mx2_runtime_data* private_data; } ;
struct mx1_mx2_runtime_data {int dma_ch; } ;


 int imx_dma_free (int ) ;
 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;

__attribute__((used)) static int mx1_mx2_pcm_hw_free(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct mx1_mx2_runtime_data *prtd = runtime->private_data;

 imx_dma_free(prtd->dma_ch);

 snd_pcm_lib_free_pages(substream);

 return 0;
}
