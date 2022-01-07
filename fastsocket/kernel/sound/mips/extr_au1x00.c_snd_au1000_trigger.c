
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct audio_stream* private_data; } ;
struct audio_stream {int dma_lock; } ;


 int EINVAL ;


 int au1000_dma_start (struct audio_stream*) ;
 int au1000_dma_stop (struct audio_stream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int
snd_au1000_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct audio_stream *stream = substream->private_data;
 int err = 0;

 spin_lock(&stream->dma_lock);
 switch (cmd) {
 case 129:
  au1000_dma_start(stream);
  break;
 case 128:
  au1000_dma_stop(stream);
  break;
 default:
  err = -EINVAL;
  break;
 }
 spin_unlock(&stream->dma_lock);
 return err;
}
