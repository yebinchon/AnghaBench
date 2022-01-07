
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {size_t number; } ;
struct snd_ice1712 {int ** pcm_reserved; int ** playback_con_substream_ds; int pro_rate_default; } ;


 scalar_t__ PRO_RATE_RESET ;
 struct snd_ice1712* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_vt1724_set_pro_rate (struct snd_ice1712*,int ,int ) ;

__attribute__((used)) static int snd_vt1724_playback_indep_close(struct snd_pcm_substream *substream)
{
 struct snd_ice1712 *ice = snd_pcm_substream_chip(substream);

 if (PRO_RATE_RESET)
  snd_vt1724_set_pro_rate(ice, ice->pro_rate_default, 0);
 ice->playback_con_substream_ds[substream->number] = ((void*)0);
 ice->pcm_reserved[substream->number] = ((void*)0);

 return 0;
}
