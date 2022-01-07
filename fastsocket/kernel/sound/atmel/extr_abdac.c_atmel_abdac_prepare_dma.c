
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dma_addr; int buffer_size; int period_size; } ;
struct dw_cyclic_desc {struct atmel_abdac* period_callback_param; int period_callback; } ;
struct dma_chan {int dummy; } ;
struct TYPE_4__ {struct dw_cyclic_desc* cdesc; struct dma_chan* chan; } ;
struct atmel_abdac {int flags; TYPE_2__ dma; TYPE_1__* pdev; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_3__ {int dev; } ;


 int DMA_READY ;
 int DMA_TO_DEVICE ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct dw_cyclic_desc*) ;
 int PTR_ERR (struct dw_cyclic_desc*) ;
 int atmel_abdac_dma_period_done ;
 int dev_dbg (int *,char*) ;
 struct dw_cyclic_desc* dw_dma_cyclic_prep (struct dma_chan*,int,unsigned long,unsigned long,int ) ;
 unsigned long frames_to_bytes (struct snd_pcm_runtime*,int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int atmel_abdac_prepare_dma(struct atmel_abdac *dac,
  struct snd_pcm_substream *substream,
  enum dma_data_direction direction)
{
 struct dma_chan *chan = dac->dma.chan;
 struct dw_cyclic_desc *cdesc;
 struct snd_pcm_runtime *runtime = substream->runtime;
 unsigned long buffer_len, period_len;





 if (runtime->dma_addr & 1 || runtime->buffer_size & 1) {
  dev_dbg(&dac->pdev->dev, "too complex transfer\n");
  return -EINVAL;
 }

 buffer_len = frames_to_bytes(runtime, runtime->buffer_size);
 period_len = frames_to_bytes(runtime, runtime->period_size);

 cdesc = dw_dma_cyclic_prep(chan, runtime->dma_addr, buffer_len,
   period_len, DMA_TO_DEVICE);
 if (IS_ERR(cdesc)) {
  dev_dbg(&dac->pdev->dev, "could not prepare cyclic DMA\n");
  return PTR_ERR(cdesc);
 }

 cdesc->period_callback = atmel_abdac_dma_period_done;
 cdesc->period_callback_param = dac;

 dac->dma.cdesc = cdesc;

 set_bit(DMA_READY, &dac->flags);

 return 0;
}
