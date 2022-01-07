
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int (* volatile_register ) (int) ;} ;


 int stub1 (int) ;

int snd_soc_codec_volatile_register(struct snd_soc_codec *codec, int reg)
{
 if (codec->volatile_register)
  return codec->volatile_register(reg);
 else
  return 0;
}
