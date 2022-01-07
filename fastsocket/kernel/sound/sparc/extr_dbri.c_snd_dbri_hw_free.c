
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_2__* runtime; } ;
struct snd_dbri {TYPE_1__* op; } ;
struct dbri_streaminfo {int pipe; scalar_t__ dvma_buffer; } ;
struct TYPE_4__ {int buffer_size; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ DBRI_PLAY ;
 struct dbri_streaminfo* DBRI_STREAM (struct snd_dbri*,struct snd_pcm_substream*) ;
 scalar_t__ DBRI_STREAMNO (struct snd_pcm_substream*) ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int D_USR ;
 int dma_unmap_single (int *,scalar_t__,int ,int) ;
 int dprintk (int ,char*) ;
 int reset_pipe (struct snd_dbri*,int) ;
 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;
 struct snd_dbri* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_dbri_hw_free(struct snd_pcm_substream *substream)
{
 struct snd_dbri *dbri = snd_pcm_substream_chip(substream);
 struct dbri_streaminfo *info = DBRI_STREAM(dbri, substream);
 int direction;

 dprintk(D_USR, "hw_free.\n");



 if (info->dvma_buffer) {
  if (DBRI_STREAMNO(substream) == DBRI_PLAY)
   direction = DMA_TO_DEVICE;
  else
   direction = DMA_FROM_DEVICE;

  dma_unmap_single(&dbri->op->dev, info->dvma_buffer,
     substream->runtime->buffer_size, direction);
  info->dvma_buffer = 0;
 }
 if (info->pipe != -1) {
  reset_pipe(dbri, info->pipe);
  info->pipe = -1;
 }

 return snd_pcm_lib_free_pages(substream);
}
