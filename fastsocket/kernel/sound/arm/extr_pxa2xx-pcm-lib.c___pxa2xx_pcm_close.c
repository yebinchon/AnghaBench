
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_2__* pcm; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct pxa2xx_runtime_data* private_data; } ;
struct pxa2xx_runtime_data {int dma_desc_array_phys; int dma_desc_array; } ;
struct TYPE_4__ {TYPE_1__* card; } ;
struct TYPE_3__ {int dev; } ;


 int PAGE_SIZE ;
 int dma_free_writecombine (int ,int ,int ,int ) ;
 int kfree (struct pxa2xx_runtime_data*) ;

int __pxa2xx_pcm_close(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct pxa2xx_runtime_data *rtd = runtime->private_data;

 dma_free_writecombine(substream->pcm->card->dev, PAGE_SIZE,
         rtd->dma_desc_array, rtd->dma_desc_array_phys);
 kfree(rtd);
 return 0;
}
