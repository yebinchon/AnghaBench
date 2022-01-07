
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_pcm_runtime {scalar_t__ dma_area; } ;
struct fsi_priv {int byte_offset; scalar_t__ base; int dma_chan; } ;


 scalar_t__ DODT ;
 int SM_INC ;
 int TM_BUR ;
 int TS_32 ;
 int dma_configure_channel (int ,int) ;
 int dma_wait_for_completion (int ) ;
 int dma_write (int ,int ,int ,int) ;

__attribute__((used)) static void fsi_32data_push(struct fsi_priv *fsi,
      struct snd_pcm_runtime *runtime,
      int send)
{
 u32 *dma_start;


 dma_start = (u32 *)runtime->dma_area;
 dma_start += fsi->byte_offset / 4;

 dma_wait_for_completion(fsi->dma_chan);
 dma_configure_channel(fsi->dma_chan, (SM_INC|0x400|TS_32|TM_BUR));
 dma_write(fsi->dma_chan, (u32)dma_start,
    (u32)(fsi->base + DODT), send * 4);
}
