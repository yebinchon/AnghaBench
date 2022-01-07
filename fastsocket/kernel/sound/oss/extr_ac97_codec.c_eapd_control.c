
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ac97_codec {int (* codec_read ) (struct ac97_codec*,int ) ;int (* codec_write ) (struct ac97_codec*,int ,int) ;} ;


 int AC97_POWER_CONTROL ;
 int stub1 (struct ac97_codec*,int ,int) ;
 int stub2 (struct ac97_codec*,int ) ;
 int stub3 (struct ac97_codec*,int ,int) ;
 int stub4 (struct ac97_codec*,int ) ;

__attribute__((used)) static int eapd_control(struct ac97_codec * codec, int on)
{
 if(on)
  codec->codec_write(codec, AC97_POWER_CONTROL,
   codec->codec_read(codec, AC97_POWER_CONTROL)|0x8000);
 else
  codec->codec_write(codec, AC97_POWER_CONTROL,
   codec->codec_read(codec, AC97_POWER_CONTROL)&~0x8000);
 return 0;
}
