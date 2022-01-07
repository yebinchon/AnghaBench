
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_2__* pcm; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct pxa2xx_runtime_data* private_data; int hw; } ;
struct pxa2xx_runtime_data {int dma_desc_array; int dma_desc_array_phys; } ;
struct TYPE_4__ {TYPE_1__* card; } ;
struct TYPE_3__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int SNDRV_PCM_HW_PARAM_BUFFER_BYTES ;
 int SNDRV_PCM_HW_PARAM_PERIODS ;
 int SNDRV_PCM_HW_PARAM_PERIOD_BYTES ;
 int dma_alloc_writecombine (int ,int ,int *,int ) ;
 int kfree (struct pxa2xx_runtime_data*) ;
 struct pxa2xx_runtime_data* kzalloc (int,int ) ;
 int pxa2xx_pcm_hardware ;
 int snd_pcm_hw_constraint_integer (struct snd_pcm_runtime*,int ) ;
 int snd_pcm_hw_constraint_step (struct snd_pcm_runtime*,int ,int ,int) ;

int __pxa2xx_pcm_open(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct pxa2xx_runtime_data *rtd;
 int ret;

 runtime->hw = pxa2xx_pcm_hardware;






 ret = snd_pcm_hw_constraint_step(runtime, 0,
  SNDRV_PCM_HW_PARAM_PERIOD_BYTES, 32);
 if (ret)
  goto out;

 ret = snd_pcm_hw_constraint_step(runtime, 0,
  SNDRV_PCM_HW_PARAM_BUFFER_BYTES, 32);
 if (ret)
  goto out;

 ret = snd_pcm_hw_constraint_integer(runtime,
         SNDRV_PCM_HW_PARAM_PERIODS);
 if (ret < 0)
  goto out;

 ret = -ENOMEM;
 rtd = kzalloc(sizeof(*rtd), GFP_KERNEL);
 if (!rtd)
  goto out;
 rtd->dma_desc_array =
  dma_alloc_writecombine(substream->pcm->card->dev, PAGE_SIZE,
           &rtd->dma_desc_array_phys, GFP_KERNEL);
 if (!rtd->dma_desc_array)
  goto err1;

 runtime->private_data = rtd;
 return 0;

 err1:
 kfree(rtd);
 out:
 return ret;
}
