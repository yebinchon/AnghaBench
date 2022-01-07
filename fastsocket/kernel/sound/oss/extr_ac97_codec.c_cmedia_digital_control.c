
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ac97_codec {int (* codec_read ) (struct ac97_codec*,int) ;int (* codec_write ) (struct ac97_codec*,int,int) ;} ;


 int AUDIO_DIGITAL ;
 int EINVAL ;
 int stub1 (struct ac97_codec*,int,int) ;
 int stub2 (struct ac97_codec*,int,int) ;
 int stub3 (struct ac97_codec*,int) ;
 int stub4 (struct ac97_codec*,int,int) ;

__attribute__((used)) static int cmedia_digital_control(struct ac97_codec *codec, int slots, int rate, int mode)
{
 u16 cv;

 if(mode & AUDIO_DIGITAL)
  return -EINVAL;

 switch(rate)
 {
  case 0: cv = 0x0001; break;
  case 48000: cv = 0x0009; break;
  default:
   return -EINVAL;
 }
 codec->codec_write(codec, 0x2A, 0x05c4);
 codec->codec_write(codec, 0x6C, cv);


 cv = codec->codec_read(codec, 0x64);
 cv &= ~0x0200;
 if(mode)
  cv |= 0x0200;
 codec->codec_write(codec, 0x64, cv);
 return 0;
}
