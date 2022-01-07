
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct atmel_runtime_data {struct atmel_pcm_dma_params* params; } ;
struct atmel_pcm_dma_params {int * dma_intr_handler; TYPE_3__* mask; TYPE_2__* ssc; } ;
struct TYPE_6__ {int pdc_disable; } ;
struct TYPE_5__ {int regs; } ;
struct TYPE_4__ {struct atmel_runtime_data* private_data; } ;


 int SSC_PDC_PTCR ;
 int ssc_writex (int ,int ,int ) ;

__attribute__((used)) static int atmel_pcm_hw_free(struct snd_pcm_substream *substream)
{
 struct atmel_runtime_data *prtd = substream->runtime->private_data;
 struct atmel_pcm_dma_params *params = prtd->params;

 if (params != ((void*)0)) {
  ssc_writex(params->ssc->regs, SSC_PDC_PTCR,
      params->mask->pdc_disable);
  prtd->params->dma_intr_handler = ((void*)0);
 }

 return 0;
}
