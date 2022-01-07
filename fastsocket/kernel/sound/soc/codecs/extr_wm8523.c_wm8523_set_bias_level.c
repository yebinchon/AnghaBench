
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8523_priv {int supplies; int * reg_cache; } ;
struct snd_soc_codec {int bias_level; int dev; struct wm8523_priv* private_data; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int ARRAY_SIZE (int ) ;




 int WM8523_AIF_CTRL1 ;
 int WM8523_MAX_REGISTER ;
 int WM8523_PSCTRL1 ;
 int WM8523_SYS_ENA_MASK ;
 int dev_err (int ,char*,int) ;
 int msleep (int) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_enable (int ,int ) ;
 int snd_soc_update_bits (struct snd_soc_codec*,int ,int ,int) ;
 int snd_soc_write (struct snd_soc_codec*,int,int ) ;

__attribute__((used)) static int wm8523_set_bias_level(struct snd_soc_codec *codec,
     enum snd_soc_bias_level level)
{
 struct wm8523_priv *wm8523 = codec->private_data;
 int ret, i;

 switch (level) {
 case 130:
  break;

 case 129:

  snd_soc_update_bits(codec, WM8523_PSCTRL1,
        WM8523_SYS_ENA_MASK, 3);
  break;

 case 128:
  if (codec->bias_level == 131) {
   ret = regulator_bulk_enable(ARRAY_SIZE(wm8523->supplies),
          wm8523->supplies);
   if (ret != 0) {
    dev_err(codec->dev,
     "Failed to enable supplies: %d\n",
     ret);
    return ret;
   }


   snd_soc_update_bits(codec, WM8523_PSCTRL1,
         WM8523_SYS_ENA_MASK, 1);


   for (i = WM8523_AIF_CTRL1;
        i < WM8523_MAX_REGISTER; i++)
    snd_soc_write(codec, i, wm8523->reg_cache[i]);


   msleep(100);
  }


  snd_soc_update_bits(codec, WM8523_PSCTRL1,
        WM8523_SYS_ENA_MASK, 2);

  break;

 case 131:

  snd_soc_update_bits(codec, WM8523_PSCTRL1,
        WM8523_SYS_ENA_MASK, 0);
  msleep(100);

  regulator_bulk_disable(ARRAY_SIZE(wm8523->supplies),
           wm8523->supplies);
  break;
 }
 codec->bias_level = level;
 return 0;
}
