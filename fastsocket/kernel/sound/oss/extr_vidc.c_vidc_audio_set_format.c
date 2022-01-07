
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vidc_audio_channels ;
 unsigned int vidc_audio_format ;
 int vidc_update_filler (unsigned int,int ) ;

__attribute__((used)) static unsigned int vidc_audio_set_format(int dev, unsigned int fmt)
{
 switch (fmt) {
 default:
  fmt = 130;
 case 128:
 case 129:
 case 130:
  vidc_audio_format = fmt;
  vidc_update_filler(vidc_audio_format, vidc_audio_channels);
 case 131:
  break;
 }
 return vidc_audio_format;
}
