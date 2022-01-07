
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {size_t buffer_size; struct audiopipe* private_data; } ;
struct audiopipe {size_t last_counter; int position; int * dma_counter; } ;
typedef size_t snd_pcm_uframes_t ;


 size_t bytes_to_frames (struct snd_pcm_runtime*,int ) ;
 scalar_t__ frames_to_bytes (struct snd_pcm_runtime*,size_t) ;
 size_t le32_to_cpu (int ) ;

__attribute__((used)) static snd_pcm_uframes_t pcm_pointer(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct audiopipe *pipe = runtime->private_data;
 size_t cnt, bufsize, pos;

 cnt = le32_to_cpu(*pipe->dma_counter);
 pipe->position += cnt - pipe->last_counter;
 pipe->last_counter = cnt;
 bufsize = substream->runtime->buffer_size;
 pos = bytes_to_frames(substream->runtime, pipe->position);

 while (pos >= bufsize) {
  pipe->position -= frames_to_bytes(substream->runtime, bufsize);
  pos -= bufsize;
 }
 return pos;
}
