
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsl_dma_private {size_t current_link; scalar_t__ dma_buf_next; scalar_t__ period_size; scalar_t__ dma_buf_end; scalar_t__ dma_buf_phys; TYPE_1__* substream; struct fsl_dma_link_descriptor* link; } ;
struct fsl_dma_link_descriptor {void* dest_addr; void* source_addr; } ;
struct TYPE_2__ {scalar_t__ stream; } ;


 size_t NUM_DMA_LINKS ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 void* cpu_to_be32 (scalar_t__) ;

__attribute__((used)) static void fsl_dma_update_pointers(struct fsl_dma_private *dma_private)
{
 struct fsl_dma_link_descriptor *link =
  &dma_private->link[dma_private->current_link];


 if (dma_private->substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  link->source_addr =
   cpu_to_be32(dma_private->dma_buf_next);
 else
  link->dest_addr =
   cpu_to_be32(dma_private->dma_buf_next);


 dma_private->dma_buf_next += dma_private->period_size;

 if (dma_private->dma_buf_next >= dma_private->dma_buf_end)
  dma_private->dma_buf_next = dma_private->dma_buf_phys;

 if (++dma_private->current_link >= NUM_DMA_LINKS)
  dma_private->current_link = 0;
}
