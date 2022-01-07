
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct fm801 {int * playback_substream; } ;


 struct fm801* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_fm801_playback_close(struct snd_pcm_substream *substream)
{
 struct fm801 *chip = snd_pcm_substream_chip(substream);

 chip->playback_substream = ((void*)0);
 return 0;
}
