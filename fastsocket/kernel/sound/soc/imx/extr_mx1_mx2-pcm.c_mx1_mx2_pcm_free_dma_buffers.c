
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_dma_buffer {int * area; int addr; int bytes; } ;
struct snd_pcm_substream {struct snd_dma_buffer dma_buffer; } ;
struct snd_pcm {TYPE_1__* card; TYPE_2__* streams; } ;
struct TYPE_4__ {struct snd_pcm_substream* substream; } ;
struct TYPE_3__ {int dev; } ;


 int dma_free_writecombine (int ,int ,int *,int ) ;

__attribute__((used)) static void mx1_mx2_pcm_free_dma_buffers(struct snd_pcm *pcm)
{
 struct snd_pcm_substream *substream;
 struct snd_dma_buffer *buf;
 int stream;

 for (stream = 0; stream < 2; stream++) {
  substream = pcm->streams[stream].substream;
  if (!substream)
   continue;

  buf = &substream->dma_buffer;
  if (!buf->area)
   continue;

  dma_free_writecombine(pcm->card->dev, buf->bytes,
          buf->area, buf->addr);
  buf->area = ((void*)0);
 }
}
