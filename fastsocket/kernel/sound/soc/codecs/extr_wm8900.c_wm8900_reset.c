
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int reg_cache; } ;


 int WM8900_REG_RESET ;
 int memcpy (int ,int ,int) ;
 int snd_soc_write (struct snd_soc_codec*,int ,int ) ;
 int wm8900_reg_defaults ;

__attribute__((used)) static void wm8900_reset(struct snd_soc_codec *codec)
{
 snd_soc_write(codec, WM8900_REG_RESET, 0);

 memcpy(codec->reg_cache, wm8900_reg_defaults,
        sizeof(codec->reg_cache));
}
