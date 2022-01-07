
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pmac {int capture; } ;
struct snd_pcm_substream {int dummy; } ;


 struct snd_pmac* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_pmac_pcm_trigger (struct snd_pmac*,int *,struct snd_pcm_substream*,int) ;

__attribute__((used)) static int snd_pmac_capture_trigger(struct snd_pcm_substream *subs,
        int cmd)
{
 struct snd_pmac *chip = snd_pcm_substream_chip(subs);
 return snd_pmac_pcm_trigger(chip, &chip->capture, subs, cmd);
}
