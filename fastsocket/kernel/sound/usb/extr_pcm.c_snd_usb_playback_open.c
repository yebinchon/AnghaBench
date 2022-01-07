
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_usb_pcm_open (struct snd_pcm_substream*,int ) ;

__attribute__((used)) static int snd_usb_playback_open(struct snd_pcm_substream *substream)
{
 return snd_usb_pcm_open(substream, SNDRV_PCM_STREAM_PLAYBACK);
}
