
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm {int dummy; } ;


 int SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_pcm_set_ops (struct snd_pcm*,int,int *) ;
 int snd_usb_capture_ops ;
 int snd_usb_playback_ops ;

void snd_usb_set_pcm_ops(struct snd_pcm *pcm, int stream)
{
 snd_pcm_set_ops(pcm, stream,
   stream == SNDRV_PCM_STREAM_PLAYBACK ?
   &snd_usb_playback_ops : &snd_usb_capture_ops);
}
