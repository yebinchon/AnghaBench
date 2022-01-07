
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_cs4231 {int * playback_substream; } ;


 int CS4231_MODE_PLAY ;
 int snd_cs4231_close (struct snd_cs4231*,int ) ;
 struct snd_cs4231* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_cs4231_playback_close(struct snd_pcm_substream *substream)
{
 struct snd_cs4231 *chip = snd_pcm_substream_chip(substream);

 snd_cs4231_close(chip, CS4231_MODE_PLAY);
 chip->playback_substream = ((void*)0);

 return 0;
}
