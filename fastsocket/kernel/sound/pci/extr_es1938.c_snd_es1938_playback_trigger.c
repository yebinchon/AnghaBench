
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int number; } ;


 int EINVAL ;
 int snd_BUG () ;
 int snd_es1938_playback1_trigger (struct snd_pcm_substream*,int) ;
 int snd_es1938_playback2_trigger (struct snd_pcm_substream*,int) ;

__attribute__((used)) static int snd_es1938_playback_trigger(struct snd_pcm_substream *substream,
           int cmd)
{
 switch (substream->number) {
 case 0:
  return snd_es1938_playback1_trigger(substream, cmd);
 case 1:
  return snd_es1938_playback2_trigger(substream, cmd);
 }
 snd_BUG();
 return -EINVAL;
}
