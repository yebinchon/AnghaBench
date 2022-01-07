
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 short vidc_audio_channels ;
 int vidc_audio_format ;
 int vidc_update_filler (int ,short) ;

__attribute__((used)) static short vidc_audio_set_channels(int dev, short channels)
{
 switch (channels) {
 default:
  channels = 2;
 case 1:
 case 2:
  vidc_audio_channels = channels;
  vidc_update_filler(vidc_audio_format, vidc_audio_channels);
 case 0:
  break;
 }
 return vidc_audio_channels;
}
