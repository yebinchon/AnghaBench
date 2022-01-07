
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sb {struct snd_pcm_substream* playback_substream; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int hw; } ;


 int snd_als4000_playback ;
 struct snd_sb* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_als4000_playback_open(struct snd_pcm_substream *substream)
{
 struct snd_sb *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;

 chip->playback_substream = substream;
 runtime->hw = snd_als4000_playback;
 return 0;
}
