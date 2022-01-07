
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {scalar_t__ number; } ;
struct snd_es18xx {int caps; int * playback_b_substream; int * playback_a_substream; } ;


 int ES18XX_PCM2 ;
 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;
 struct snd_es18xx* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_es18xx_playback_close(struct snd_pcm_substream *substream)
{
        struct snd_es18xx *chip = snd_pcm_substream_chip(substream);

 if (substream->number == 0 && (chip->caps & ES18XX_PCM2))
  chip->playback_a_substream = ((void*)0);
 else
  chip->playback_b_substream = ((void*)0);

 snd_pcm_lib_free_pages(substream);
 return 0;
}
