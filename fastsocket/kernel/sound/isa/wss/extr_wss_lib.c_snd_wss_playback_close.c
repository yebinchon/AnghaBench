
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_wss {int * playback_substream; } ;
struct snd_pcm_substream {int dummy; } ;


 int WSS_MODE_PLAY ;
 struct snd_wss* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_wss_close (struct snd_wss*,int ) ;

__attribute__((used)) static int snd_wss_playback_close(struct snd_pcm_substream *substream)
{
 struct snd_wss *chip = snd_pcm_substream_chip(substream);

 chip->playback_substream = ((void*)0);
 snd_wss_close(chip, WSS_MODE_PLAY);
 return 0;
}
