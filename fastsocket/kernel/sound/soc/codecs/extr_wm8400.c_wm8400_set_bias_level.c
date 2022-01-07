
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct wm8400_priv {TYPE_1__* wm8400; } ;
struct snd_soc_codec {int bias_level; struct wm8400_priv* private_data; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;
struct TYPE_2__ {int dev; } ;


 int ARRAY_SIZE (int *) ;




 int WM8400_ANTIPOP1 ;
 int WM8400_ANTIPOP2 ;
 int WM8400_BUFDCOPEN ;
 int WM8400_BUFIOEN ;
 int WM8400_CODEC_ENA ;
 int WM8400_DAC_CTRL ;
 int WM8400_DAC_MUTE ;
 int WM8400_DIS_LLINE ;
 int WM8400_DIS_LOUT ;
 int WM8400_DIS_OUT3 ;
 int WM8400_DIS_OUT4 ;
 int WM8400_DIS_RLINE ;
 int WM8400_DIS_ROUT ;
 int WM8400_LOUT_ENA ;
 int WM8400_OUT3_ENA ;
 int WM8400_OUT4_ENA ;
 int WM8400_POBCTRL ;
 int WM8400_POWER_MANAGEMENT_1 ;
 int WM8400_ROUT_ENA ;
 int WM8400_SOFTST ;
 int WM8400_SPK_ENA ;
 int WM8400_SYSCLK_ENA ;
 int WM8400_VMID_MODE_MASK ;
 int WM8400_VREF_ENA ;
 int dev_err (int ,char*,int) ;
 int msleep (int) ;
 int * power ;
 int regulator_bulk_disable (int ,int *) ;
 int regulator_bulk_enable (int ,int *) ;
 int wm8400_read (struct snd_soc_codec*,int ) ;
 int wm8400_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm8400_set_bias_level(struct snd_soc_codec *codec,
     enum snd_soc_bias_level level)
{
 struct wm8400_priv *wm8400 = codec->private_data;
 u16 val;
 int ret;

 switch (level) {
 case 130:
  break;

 case 129:

  val = wm8400_read(codec, WM8400_POWER_MANAGEMENT_1) &
   ~WM8400_VMID_MODE_MASK;
  wm8400_write(codec, WM8400_POWER_MANAGEMENT_1, val | 0x2);
  break;

 case 128:
  if (codec->bias_level == 131) {
   ret = regulator_bulk_enable(ARRAY_SIZE(power),
          &power[0]);
   if (ret != 0) {
    dev_err(wm8400->wm8400->dev,
     "Failed to enable regulators: %d\n",
     ret);
    return ret;
   }

   wm8400_write(codec, WM8400_POWER_MANAGEMENT_1,
         WM8400_CODEC_ENA | WM8400_SYSCLK_ENA);


   wm8400_write(codec, WM8400_ANTIPOP2, WM8400_SOFTST |
         WM8400_BUFDCOPEN | WM8400_POBCTRL);

   msleep(50);


   val = wm8400_read(codec, WM8400_POWER_MANAGEMENT_1);
   val |= 0x2 | WM8400_VREF_ENA;
   wm8400_write(codec, WM8400_POWER_MANAGEMENT_1, val);


   wm8400_write(codec, WM8400_ANTIPOP2, WM8400_SOFTST |
         WM8400_BUFDCOPEN | WM8400_POBCTRL |
         WM8400_BUFIOEN);


   wm8400_write(codec, WM8400_ANTIPOP2, WM8400_BUFIOEN);
  }


  val = wm8400_read(codec, WM8400_POWER_MANAGEMENT_1) &
   ~WM8400_VMID_MODE_MASK;
  wm8400_write(codec, WM8400_POWER_MANAGEMENT_1, val | 0x4);
  break;

 case 131:

  wm8400_write(codec, WM8400_ANTIPOP2, WM8400_SOFTST |
   WM8400_POBCTRL | WM8400_BUFIOEN);


  wm8400_write(codec, WM8400_ANTIPOP2, WM8400_SOFTST |
   WM8400_BUFDCOPEN | WM8400_POBCTRL |
   WM8400_BUFIOEN);


  val = wm8400_read(codec, WM8400_DAC_CTRL);
  wm8400_write(codec, WM8400_DAC_CTRL, val | WM8400_DAC_MUTE);


  val = wm8400_read(codec, WM8400_POWER_MANAGEMENT_1);
  val |= WM8400_SPK_ENA | WM8400_OUT3_ENA |
   WM8400_OUT4_ENA | WM8400_LOUT_ENA |
   WM8400_ROUT_ENA;
  wm8400_write(codec, WM8400_POWER_MANAGEMENT_1, val);


  val &= ~WM8400_VMID_MODE_MASK;
  wm8400_write(codec, WM8400_POWER_MANAGEMENT_1, val);

  msleep(300);


  wm8400_write(codec, WM8400_ANTIPOP1, WM8400_DIS_LLINE |
   WM8400_DIS_RLINE | WM8400_DIS_OUT3 |
   WM8400_DIS_OUT4 | WM8400_DIS_LOUT |
   WM8400_DIS_ROUT);


  val &= ~WM8400_VREF_ENA;
  wm8400_write(codec, WM8400_POWER_MANAGEMENT_1, val);


  wm8400_write(codec, WM8400_ANTIPOP2, 0x0);

  ret = regulator_bulk_disable(ARRAY_SIZE(power),
          &power[0]);
  if (ret != 0)
   return ret;

  break;
 }

 codec->bias_level = level;
 return 0;
}
