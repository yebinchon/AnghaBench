
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct wm8960_data {int dres; } ;
struct snd_soc_codec {int bias_level; TYPE_1__* dev; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;
struct TYPE_2__ {struct wm8960_data* platform_data; } ;






 int WM8960_APOP1 ;
 int WM8960_APOP2 ;
 int WM8960_BUFDCOPEN ;
 int WM8960_BUFIOEN ;
 int WM8960_DISOP ;
 int WM8960_POBCTRL ;
 int WM8960_POWER1 ;
 int WM8960_SOFT_ST ;
 int WM8960_VREF ;
 int msleep (int) ;
 int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm8960_set_bias_level(struct snd_soc_codec *codec,
     enum snd_soc_bias_level level)
{
 struct wm8960_data *pdata = codec->dev->platform_data;
 u16 reg;

 switch (level) {
 case 130:
  break;

 case 129:

  reg = snd_soc_read(codec, WM8960_POWER1);
  reg &= ~0x180;
  reg |= 0x80;
  snd_soc_write(codec, WM8960_POWER1, reg);
  break;

 case 128:
  if (codec->bias_level == 131) {

   snd_soc_write(codec, WM8960_APOP1,
         WM8960_POBCTRL | WM8960_SOFT_ST |
         WM8960_BUFDCOPEN | WM8960_BUFIOEN);


   reg = WM8960_DISOP;
   if (pdata)
    reg |= pdata->dres << 4;
   snd_soc_write(codec, WM8960_APOP2, reg);

   msleep(400);

   snd_soc_write(codec, WM8960_APOP2, 0);


   reg = snd_soc_read(codec, WM8960_POWER1);
   reg |= 0x80;
   snd_soc_write(codec, WM8960_POWER1, reg);
   msleep(100);


   snd_soc_write(codec, WM8960_POWER1, reg | WM8960_VREF);


   snd_soc_write(codec, WM8960_APOP1, WM8960_BUFIOEN);
  }


  reg = snd_soc_read(codec, WM8960_POWER1);
  reg &= ~0x180;
  reg |= 0x100;
  snd_soc_write(codec, WM8960_POWER1, reg);
  break;

 case 131:

  snd_soc_write(codec, WM8960_APOP1,
        WM8960_POBCTRL | WM8960_SOFT_ST |
        WM8960_BUFDCOPEN | WM8960_BUFIOEN);


  snd_soc_write(codec, WM8960_POWER1, 0);
  msleep(600);

  snd_soc_write(codec, WM8960_APOP1, 0);
  break;
 }

 codec->bias_level = level;

 return 0;
}
