
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_msnd {int flags; } ;


 int F_AUDIO_WRITE_INUSE ;
 int clear_bit (int ,int *) ;
 int snd_msnd_disable_irq (struct snd_msnd*) ;
 struct snd_msnd* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_msnd_playback_close(struct snd_pcm_substream *substream)
{
 struct snd_msnd *chip = snd_pcm_substream_chip(substream);

 snd_msnd_disable_irq(chip);
 clear_bit(F_AUDIO_WRITE_INUSE, &chip->flags);
 return 0;
}
