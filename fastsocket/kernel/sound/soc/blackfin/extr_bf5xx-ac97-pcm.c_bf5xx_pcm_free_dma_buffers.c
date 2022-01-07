
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_dma_buffer {size_t bytes; int * area; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_dma_buffer dma_buffer; } ;
struct snd_pcm {TYPE_1__* streams; } ;
struct ac97_frame {int dummy; } ;
struct TYPE_7__ {int buffer_bytes_max; } ;
struct TYPE_6__ {int * rx_dma_buf; int * tx_dma_buf; } ;
struct TYPE_5__ {struct snd_pcm_substream* substream; } ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 TYPE_4__ bf5xx_pcm_hardware ;
 int dma_free_coherent (int *,size_t,int *,int ) ;
 int sport_done (TYPE_2__*) ;
 TYPE_2__* sport_handle ;

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
