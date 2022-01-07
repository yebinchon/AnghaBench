
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_es1688 {int dummy; } ;


 int snd_es1688_trigger (struct snd_es1688*,int,int) ;
 struct snd_es1688* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_es1688_playback_trigger(struct snd_pcm_substream *substream,
           int cmd)
{
 struct snd_es1688 *chip = snd_pcm_substream_chip(substream);
 return snd_es1688_trigger(chip, cmd, 0x05);
}
