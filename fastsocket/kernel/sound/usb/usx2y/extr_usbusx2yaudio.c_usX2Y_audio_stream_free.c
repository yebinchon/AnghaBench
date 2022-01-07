
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usX2Y_substream {int dummy; } ;


 size_t SNDRV_PCM_STREAM_CAPTURE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int kfree (struct snd_usX2Y_substream*) ;

__attribute__((used)) static void usX2Y_audio_stream_free(struct snd_usX2Y_substream **usX2Y_substream)
{
 kfree(usX2Y_substream[SNDRV_PCM_STREAM_PLAYBACK]);
 usX2Y_substream[SNDRV_PCM_STREAM_PLAYBACK] = ((void*)0);

 kfree(usX2Y_substream[SNDRV_PCM_STREAM_CAPTURE]);
 usX2Y_substream[SNDRV_PCM_STREAM_CAPTURE] = ((void*)0);
}
