
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct nm256 {int dummy; } ;


 int snd_nm256_release_irq (struct nm256*) ;
 struct nm256* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int
snd_nm256_playback_close(struct snd_pcm_substream *substream)
{
 struct nm256 *chip = snd_pcm_substream_chip(substream);

 snd_nm256_release_irq(chip);
 return 0;
}
