
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int DSP_PCM_MAIN_CHANNEL ;
 int _cs46xx_playback_open_channel (struct snd_pcm_substream*,int ) ;
 int snd_printdd (char*) ;

__attribute__((used)) static int snd_cs46xx_playback_open(struct snd_pcm_substream *substream)
{
 snd_printdd("open front channel\n");
 return _cs46xx_playback_open_channel(substream,DSP_PCM_MAIN_CHANNEL);
}
