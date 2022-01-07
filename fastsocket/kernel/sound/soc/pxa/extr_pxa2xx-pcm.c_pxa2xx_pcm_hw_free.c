
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct pxa2xx_runtime_data {int dma_ch; } ;
struct TYPE_2__ {struct pxa2xx_runtime_data* private_data; } ;


 int __pxa2xx_pcm_hw_free (struct snd_pcm_substream*) ;
 int pxa_free_dma (int) ;

__attribute__((used)) static int pxa2xx_pcm_hw_free(struct snd_pcm_substream *substream)
{
 struct pxa2xx_runtime_data *prtd = substream->runtime->private_data;

 __pxa2xx_pcm_hw_free(substream);

 if (prtd->dma_ch >= 0) {
  pxa_free_dma(prtd->dma_ch);
  prtd->dma_ch = -1;
 }

 return 0;
}
