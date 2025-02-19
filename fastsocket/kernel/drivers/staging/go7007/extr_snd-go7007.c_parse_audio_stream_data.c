
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct snd_pcm_runtime {scalar_t__ buffer_size; scalar_t__ dma_bytes; int dma_area; scalar_t__ period_size; } ;
struct go7007_snd {scalar_t__ hw_ptr; scalar_t__ avail; scalar_t__ w_idx; TYPE_1__* substream; scalar_t__ capturing; int lock; } ;
struct go7007 {struct go7007_snd* snd_context; } ;
struct TYPE_2__ {struct snd_pcm_runtime* runtime; } ;


 int bytes_to_frames (struct snd_pcm_runtime*,int) ;
 int memcpy (int,int *,int) ;
 int snd_pcm_period_elapsed (TYPE_1__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void parse_audio_stream_data(struct go7007 *go, u8 *buf, int length)
{
 struct go7007_snd *gosnd = go->snd_context;
 struct snd_pcm_runtime *runtime = gosnd->substream->runtime;
 int frames = bytes_to_frames(runtime, length);

 spin_lock(&gosnd->lock);
 gosnd->hw_ptr += frames;
 if (gosnd->hw_ptr >= runtime->buffer_size)
  gosnd->hw_ptr -= runtime->buffer_size;
 gosnd->avail += frames;
 spin_unlock(&gosnd->lock);
 if (gosnd->w_idx + length > runtime->dma_bytes) {
  int cpy = runtime->dma_bytes - gosnd->w_idx;

  memcpy(runtime->dma_area + gosnd->w_idx, buf, cpy);
  length -= cpy;
  buf += cpy;
  gosnd->w_idx = 0;
 }
 memcpy(runtime->dma_area + gosnd->w_idx, buf, length);
 gosnd->w_idx += length;
 spin_lock(&gosnd->lock);
 if (gosnd->avail < runtime->period_size) {
  spin_unlock(&gosnd->lock);
  return;
 }
 gosnd->avail -= runtime->period_size;
 spin_unlock(&gosnd->lock);
 if (gosnd->capturing)
  snd_pcm_period_elapsed(gosnd->substream);
}
