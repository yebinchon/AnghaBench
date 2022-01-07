
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_params {int dummy; } ;


 unsigned int OXYGEN_PLAY_CHANNELS_2 ;
 unsigned int OXYGEN_PLAY_CHANNELS_4 ;
 unsigned int OXYGEN_PLAY_CHANNELS_6 ;
 unsigned int OXYGEN_PLAY_CHANNELS_8 ;
 int params_channels (struct snd_pcm_hw_params*) ;

__attribute__((used)) static unsigned int oxygen_play_channels(struct snd_pcm_hw_params *hw_params)
{
 switch (params_channels(hw_params)) {
 default:
  return OXYGEN_PLAY_CHANNELS_2;
 case 4:
  return OXYGEN_PLAY_CHANNELS_4;
 case 6:
  return OXYGEN_PLAY_CHANNELS_6;
 case 8:
  return OXYGEN_PLAY_CHANNELS_8;
 }
}
