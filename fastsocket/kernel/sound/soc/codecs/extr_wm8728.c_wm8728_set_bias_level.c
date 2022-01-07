
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_codec {int bias_level; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int ARRAY_SIZE (int ) ;




 int WM8728_DACCTL ;
 int snd_soc_read (struct snd_soc_codec*,int) ;
 int snd_soc_write (struct snd_soc_codec*,int,int) ;
 int wm8728_reg_defaults ;

__attribute__((used)) static int wm8728_set_bias_level(struct snd_soc_codec *codec,
     enum snd_soc_bias_level level)
{
 u16 reg;
 int i;

 switch (level) {
 case 130:
 case 129:
 case 128:
  if (codec->bias_level == 131) {

   reg = snd_soc_read(codec, WM8728_DACCTL);
   snd_soc_write(codec, WM8728_DACCTL, reg & ~0x4);


   for (i = 0; i < ARRAY_SIZE(wm8728_reg_defaults); i++)
    snd_soc_write(codec, i,
          snd_soc_read(codec, i));
  }
  break;

 case 131:
  reg = snd_soc_read(codec, WM8728_DACCTL);
  snd_soc_write(codec, WM8728_DACCTL, reg | 0x4);
  break;
 }
 codec->bias_level = level;
 return 0;
}
