
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ac97_codec {int (* codec_read ) (struct ac97_codec*,int ) ;int (* codec_write ) (struct ac97_codec*,int ,long) ;} ;


 int AC97_EXTENDED_MODEM_ID ;
 int AC97_RESET ;
 int stub1 (struct ac97_codec*,int ) ;
 int stub2 (struct ac97_codec*,int ,long) ;
 int stub3 (struct ac97_codec*,int ) ;

__attribute__((used)) static int ac97_check_modem(struct ac97_codec *codec)
{

 if(codec->codec_read(codec, AC97_RESET) & 2)
  return 1;

 codec->codec_write(codec, AC97_EXTENDED_MODEM_ID, 0L);
 if(codec->codec_read(codec, AC97_EXTENDED_MODEM_ID) & 1)
  return 1;
 return 0;
}
