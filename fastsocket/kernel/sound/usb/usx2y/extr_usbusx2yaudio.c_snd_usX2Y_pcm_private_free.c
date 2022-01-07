
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usX2Y_substream {int dummy; } ;
struct snd_pcm {struct snd_usX2Y_substream** private_data; } ;


 int usX2Y_audio_stream_free (struct snd_usX2Y_substream**) ;

__attribute__((used)) static void snd_usX2Y_pcm_private_free(struct snd_pcm *pcm)
{
 struct snd_usX2Y_substream **usX2Y_stream = pcm->private_data;
 if (usX2Y_stream)
  usX2Y_audio_stream_free(usX2Y_stream);
}
