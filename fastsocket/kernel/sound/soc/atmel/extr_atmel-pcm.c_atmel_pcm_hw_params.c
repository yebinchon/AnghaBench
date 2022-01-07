
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_2__* dai; } ;
struct snd_pcm_substream {int dma_buffer; struct snd_soc_pcm_runtime* private_data; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {scalar_t__ dma_bytes; scalar_t__ dma_addr; struct atmel_runtime_data* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct atmel_runtime_data {int period_size; TYPE_3__* params; scalar_t__ dma_buffer_end; scalar_t__ dma_buffer; } ;
struct TYPE_6__ {int name; int dma_intr_handler; } ;
struct TYPE_5__ {TYPE_1__* cpu_dai; } ;
struct TYPE_4__ {TYPE_3__* dma_data; } ;


 int atmel_pcm_dma_irq ;
 scalar_t__ params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int params_period_bytes (struct snd_pcm_hw_params*) ;
 int pr_debug (char*,int ,scalar_t__,int ) ;
 int snd_pcm_set_runtime_buffer (struct snd_pcm_substream*,int *) ;

__attribute__((used)) static int atmel_pcm_hw_params(struct snd_pcm_substream *substream,
 struct snd_pcm_hw_params *params)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct atmel_runtime_data *prtd = runtime->private_data;
 struct snd_soc_pcm_runtime *rtd = substream->private_data;




 snd_pcm_set_runtime_buffer(substream, &substream->dma_buffer);
 runtime->dma_bytes = params_buffer_bytes(params);

 prtd->params = rtd->dai->cpu_dai->dma_data;
 prtd->params->dma_intr_handler = atmel_pcm_dma_irq;

 prtd->dma_buffer = runtime->dma_addr;
 prtd->dma_buffer_end = runtime->dma_addr + runtime->dma_bytes;
 prtd->period_size = params_period_bytes(params);

 pr_debug("atmel-pcm: "
  "hw_params: DMA for %s initialized "
  "(dma_bytes=%u, period_size=%u)\n",
  prtd->params->name,
  runtime->dma_bytes,
  prtd->period_size);
 return 0;
}
