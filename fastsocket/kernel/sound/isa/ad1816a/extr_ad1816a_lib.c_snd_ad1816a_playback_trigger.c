
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_ad1816a {int dummy; } ;


 int AD1816A_PLAYBACK_ENABLE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_ad1816a_trigger (struct snd_ad1816a*,int ,int ,int,int ) ;
 struct snd_ad1816a* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_ad1816a_playback_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct snd_ad1816a *chip = snd_pcm_substream_chip(substream);
 return snd_ad1816a_trigger(chip, AD1816A_PLAYBACK_ENABLE,
       SNDRV_PCM_STREAM_PLAYBACK, cmd, 0);
}
