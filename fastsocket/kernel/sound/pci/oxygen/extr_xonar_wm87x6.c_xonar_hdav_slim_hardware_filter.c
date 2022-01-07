
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hardware {int dummy; } ;


 int wm8776_adc_hardware_filter (unsigned int,struct snd_pcm_hardware*) ;
 int xonar_hdmi_pcm_hardware_filter (unsigned int,struct snd_pcm_hardware*) ;

__attribute__((used)) static void xonar_hdav_slim_hardware_filter(unsigned int channel,
         struct snd_pcm_hardware *hardware)
{
 wm8776_adc_hardware_filter(channel, hardware);
 xonar_hdmi_pcm_hardware_filter(channel, hardware);
}
