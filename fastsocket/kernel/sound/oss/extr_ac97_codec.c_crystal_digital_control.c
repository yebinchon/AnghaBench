
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ac97_codec {int (* codec_write ) (struct ac97_codec*,int,int) ;} ;


 int AUDIO_DIGITAL ;
 int EINVAL ;
 int stub1 (struct ac97_codec*,int,int) ;

__attribute__((used)) static int crystal_digital_control(struct ac97_codec *codec, int slots, int rate, int mode)
{
 u16 cv;

 if(mode & AUDIO_DIGITAL)
  return -EINVAL;

 switch(rate)
 {
  case 0: cv = 0x0; break;
  case 48000: cv = 0x8004; break;
  case 44100: cv = 0x8104; break;
  case 32768:
  default:
   return -EINVAL;
 }
 codec->codec_write(codec, 0x68, cv);
 return 0;
}
