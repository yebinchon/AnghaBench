
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct azx_dev {unsigned int period_bytes; unsigned int bufsize; scalar_t__ insufficient; int * posbuf; TYPE_1__* substream; } ;
struct azx {scalar_t__ remap_addr; } ;
struct TYPE_2__ {scalar_t__ stream; } ;


 int SD_LPIB ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 scalar_t__ VIA_IN_STREAM0_FIFO_SIZE_OFFSET ;
 unsigned int azx_sd_readl (struct azx_dev*,int ) ;
 unsigned int le32_to_cpu (int ) ;
 unsigned int readw (scalar_t__) ;

__attribute__((used)) static unsigned int azx_via_get_position(struct azx *chip,
      struct azx_dev *azx_dev)
{
 unsigned int link_pos, mini_pos, bound_pos;
 unsigned int mod_link_pos, mod_dma_pos, mod_mini_pos;
 unsigned int fifo_size;

 link_pos = azx_sd_readl(azx_dev, SD_LPIB);
 if (azx_dev->substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {

  return link_pos;
 }





 mod_dma_pos = le32_to_cpu(*azx_dev->posbuf);
 mod_dma_pos %= azx_dev->period_bytes;




 fifo_size = readw(chip->remap_addr + VIA_IN_STREAM0_FIFO_SIZE_OFFSET);

 if (azx_dev->insufficient) {

  if (link_pos <= fifo_size)
   return 0;

  azx_dev->insufficient = 0;
 }

 if (link_pos <= fifo_size)
  mini_pos = azx_dev->bufsize + link_pos - fifo_size;
 else
  mini_pos = link_pos - fifo_size;


 mod_mini_pos = mini_pos % azx_dev->period_bytes;
 mod_link_pos = link_pos % azx_dev->period_bytes;
 if (mod_link_pos >= fifo_size)
  bound_pos = link_pos - mod_link_pos;
 else if (mod_dma_pos >= mod_mini_pos)
  bound_pos = mini_pos - mod_mini_pos;
 else {
  bound_pos = mini_pos - mod_mini_pos + azx_dev->period_bytes;
  if (bound_pos >= azx_dev->bufsize)
   bound_pos = 0;
 }


 return bound_pos + mod_dma_pos;
}
