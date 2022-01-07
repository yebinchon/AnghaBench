
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_ac97c {int playback_substream; } ;


 int snd_pcm_period_elapsed (int ) ;

__attribute__((used)) static void atmel_ac97c_dma_playback_period_done(void *arg)
{
 struct atmel_ac97c *chip = arg;
 snd_pcm_period_elapsed(chip->playback_substream);
}
