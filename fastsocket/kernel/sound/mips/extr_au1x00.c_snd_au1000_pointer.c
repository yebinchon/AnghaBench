
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; struct audio_stream* private_data; } ;
struct snd_pcm_runtime {int dummy; } ;
struct audio_stream {TYPE_1__* buffer; int dma_lock; int dma; } ;
typedef int snd_pcm_uframes_t ;
struct TYPE_2__ {long relative_end; } ;


 int bytes_to_frames (struct snd_pcm_runtime*,long) ;
 long get_dma_residue (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static snd_pcm_uframes_t
snd_au1000_pointer(struct snd_pcm_substream *substream)
{
 struct audio_stream *stream = substream->private_data;
 struct snd_pcm_runtime *runtime = substream->runtime;
 long location;

 spin_lock(&stream->dma_lock);
 location = get_dma_residue(stream->dma);
 spin_unlock(&stream->dma_lock);
 location = stream->buffer->relative_end - location;
 if (location == -1)
  location = 0;
 return bytes_to_frames(runtime,location);
}
