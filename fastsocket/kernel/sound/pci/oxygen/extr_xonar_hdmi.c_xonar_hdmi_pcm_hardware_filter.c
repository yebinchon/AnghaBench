
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hardware {int rates; int rate_min; } ;


 unsigned int PCM_MULTICH ;
 int SNDRV_PCM_RATE_192000 ;
 int SNDRV_PCM_RATE_44100 ;
 int SNDRV_PCM_RATE_48000 ;
 int SNDRV_PCM_RATE_96000 ;

void xonar_hdmi_pcm_hardware_filter(unsigned int channel,
        struct snd_pcm_hardware *hardware)
{
 if (channel == PCM_MULTICH) {
  hardware->rates = SNDRV_PCM_RATE_44100 |
      SNDRV_PCM_RATE_48000 |
      SNDRV_PCM_RATE_96000 |
      SNDRV_PCM_RATE_192000;
  hardware->rate_min = 44100;
 }
}
