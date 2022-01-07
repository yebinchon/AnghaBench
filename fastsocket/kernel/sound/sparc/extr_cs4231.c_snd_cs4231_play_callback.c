
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_cs4231 {int* image; int p_periods_sent; int playback_substream; int p_dma; } ;


 size_t CS4231_IFACE_CTRL ;
 int CS4231_PLAYBACK_ENABLE ;
 int snd_cs4231_advance_dma (int *,int ,int *) ;
 int snd_pcm_period_elapsed (int ) ;

__attribute__((used)) static void snd_cs4231_play_callback(struct snd_cs4231 *chip)
{
 if (chip->image[CS4231_IFACE_CTRL] & CS4231_PLAYBACK_ENABLE) {
  snd_pcm_period_elapsed(chip->playback_substream);
  snd_cs4231_advance_dma(&chip->p_dma, chip->playback_substream,
         &chip->p_periods_sent);
 }
}
