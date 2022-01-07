
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct davinci_runtime_data* private_data; } ;
struct davinci_runtime_data {int master_lch; int slave_lch; } ;


 int edma_free_channel (int ) ;
 int edma_free_slot (int ) ;
 int edma_unlink (int ) ;
 int kfree (struct davinci_runtime_data*) ;

__attribute__((used)) static int davinci_pcm_close(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct davinci_runtime_data *prtd = runtime->private_data;

 edma_unlink(prtd->slave_lch);

 edma_free_slot(prtd->slave_lch);
 edma_free_channel(prtd->master_lch);

 kfree(prtd);

 return 0;
}
