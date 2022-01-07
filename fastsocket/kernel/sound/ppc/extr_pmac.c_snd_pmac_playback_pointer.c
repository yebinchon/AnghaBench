
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pmac {int playback; } ;
struct snd_pcm_substream {int dummy; } ;
typedef int snd_pcm_uframes_t ;


 struct snd_pmac* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_pmac_pcm_pointer (struct snd_pmac*,int *,struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t snd_pmac_playback_pointer(struct snd_pcm_substream *subs)
{
 struct snd_pmac *chip = snd_pcm_substream_chip(subs);
 return snd_pmac_pcm_pointer(chip, &chip->playback, subs);
}
