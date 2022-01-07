
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dma_addr; int buffer_size; int period_size; } ;
struct dw_cyclic_desc {struct atmel_ac97c* period_callback_param; int period_callback; } ;
struct dma_chan {int dummy; } ;
struct TYPE_3__ {struct dma_chan* rx_chan; struct dma_chan* tx_chan; } ;
struct atmel_ac97c {int flags; TYPE_2__* pdev; TYPE_1__ dma; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_4__ {int dev; } ;


 int DMA_RX_READY ;
 int DMA_TO_DEVICE ;
 int DMA_TX_READY ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct dw_cyclic_desc*) ;
 int PTR_ERR (struct dw_cyclic_desc*) ;
 int atmel_ac97c_dma_capture_period_done ;
 int atmel_ac97c_dma_playback_period_done ;
 int dev_dbg (int *,char*) ;
 struct dw_cyclic_desc* dw_dma_cyclic_prep (struct dma_chan*,int,unsigned long,unsigned long,int) ;
 unsigned long frames_to_bytes (struct snd_pcm_runtime*,int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int atmel_ac97c_prepare_dma(struct atmel_ac97c *chip,
  struct snd_pcm_substream *substream,
  enum dma_data_direction direction)
{
 struct dma_chan *chan;
 struct dw_cyclic_desc *cdesc;
 struct snd_pcm_runtime *runtime = substream->runtime;
 unsigned long buffer_len, period_len;





 if (runtime->dma_addr & 1 || runtime->buffer_size & 1) {
  dev_dbg(&chip->pdev->dev, "too complex transfer\n");
  return -EINVAL;
 }

 if (direction == DMA_TO_DEVICE)
  chan = chip->dma.tx_chan;
 else
  chan = chip->dma.rx_chan;

 buffer_len = frames_to_bytes(runtime, runtime->buffer_size);
 period_len = frames_to_bytes(runtime, runtime->period_size);

 cdesc = dw_dma_cyclic_prep(chan, runtime->dma_addr, buffer_len,
   period_len, direction);
 if (IS_ERR(cdesc)) {
  dev_dbg(&chip->pdev->dev, "could not prepare cyclic DMA\n");
  return PTR_ERR(cdesc);
 }

 if (direction == DMA_TO_DEVICE) {
  cdesc->period_callback = atmel_ac97c_dma_playback_period_done;
  set_bit(DMA_TX_READY, &chip->flags);
 } else {
  cdesc->period_callback = atmel_ac97c_dma_capture_period_done;
  set_bit(DMA_RX_READY, &chip->flags);
 }

 cdesc->period_callback_param = chip;

 return 0;
}
