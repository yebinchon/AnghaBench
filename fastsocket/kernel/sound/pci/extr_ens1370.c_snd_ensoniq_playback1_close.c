
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct ensoniq {int mode; int * playback1_substream; } ;


 int ES_MODE_PLAY1 ;
 struct ensoniq* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_ensoniq_playback1_close(struct snd_pcm_substream *substream)
{
 struct ensoniq *ensoniq = snd_pcm_substream_chip(substream);

 ensoniq->playback1_substream = ((void*)0);
 ensoniq->mode &= ~ES_MODE_PLAY1;
 return 0;
}
