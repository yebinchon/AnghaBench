
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int period_size; int buffer_size; } ;
struct fsi_priv {int dummy; } ;


 int ENODEV ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;


 int frames_to_bytes (struct snd_pcm_runtime*,int ) ;
 int fsi_data_push (struct fsi_priv*) ;
 struct fsi_priv* fsi_get (struct snd_pcm_substream*) ;
 int fsi_irq_disable (struct fsi_priv*,int) ;
 int fsi_stream_pop (struct fsi_priv*) ;
 int fsi_stream_push (struct fsi_priv*,struct snd_pcm_substream*,int ,int ) ;

__attribute__((used)) static int fsi_dai_trigger(struct snd_pcm_substream *substream, int cmd,
      struct snd_soc_dai *dai)
{
 struct fsi_priv *fsi = fsi_get(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 int is_play = substream->stream == SNDRV_PCM_STREAM_PLAYBACK;
 int ret = 0;


 if (!is_play)
  return -ENODEV;

 switch (cmd) {
 case 129:
  fsi_stream_push(fsi, substream,
    frames_to_bytes(runtime, runtime->buffer_size),
    frames_to_bytes(runtime, runtime->period_size));
  ret = fsi_data_push(fsi);
  break;
 case 128:
  fsi_irq_disable(fsi, is_play);
  fsi_stream_pop(fsi);
  break;
 }

 return ret;
}
