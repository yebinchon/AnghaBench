
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct edmacc_param {int dummy; } ;
struct davinci_runtime_data {int master_lch; int slave_lch; scalar_t__ period; } ;
struct TYPE_2__ {struct davinci_runtime_data* private_data; } ;


 int davinci_pcm_enqueue_dma (struct snd_pcm_substream*) ;
 int edma_read_slot (int ,struct edmacc_param*) ;
 int edma_write_slot (int ,struct edmacc_param*) ;

__attribute__((used)) static int davinci_pcm_prepare(struct snd_pcm_substream *substream)
{
 struct davinci_runtime_data *prtd = substream->runtime->private_data;
 struct edmacc_param temp;

 prtd->period = 0;
 davinci_pcm_enqueue_dma(substream);


 edma_read_slot(prtd->slave_lch, &temp);
 edma_write_slot(prtd->master_lch, &temp);
 davinci_pcm_enqueue_dma(substream);

 return 0;
}
