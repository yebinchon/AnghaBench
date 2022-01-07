
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_dma_buffer {int * area; int bytes; } ;
struct snd_pcm_substream {struct snd_dma_buffer dma_buffer; } ;
struct snd_pcm {TYPE_1__* streams; } ;
struct TYPE_2__ {struct snd_pcm_substream* substream; } ;


 int dma_free_coherent (int *,int ,int *,int ) ;
 int sport_done (scalar_t__) ;
 scalar_t__ sport_handle ;

__attribute__((used)) static void bf5xx_pcm_free_dma_buffers(struct snd_pcm *pcm)
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
  dma_free_coherent(((void*)0), buf->bytes, buf->area, 0);
  buf->area = ((void*)0);
 }
 if (sport_handle)
  sport_done(sport_handle);
}
