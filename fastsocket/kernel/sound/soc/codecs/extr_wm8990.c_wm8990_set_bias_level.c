
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_codec {int bias_level; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;






 int WM8990_ANTIPOP1 ;
 int WM8990_ANTIPOP2 ;
 int WM8990_BUFDCOPEN ;
 int WM8990_BUFIOEN ;
 int WM8990_DAC_CTRL ;
 int WM8990_DAC_MUTE ;
 int WM8990_DIS_LLINE ;
 int WM8990_DIS_LOUT ;
 int WM8990_DIS_OUT3 ;
 int WM8990_DIS_OUT4 ;
 int WM8990_DIS_RLINE ;
 int WM8990_DIS_ROUT ;
 int WM8990_EXT_ACCESS_ENA ;
 int WM8990_EXT_CTL1 ;
 int WM8990_POBCTRL ;
 int WM8990_POWER_MANAGEMENT_1 ;
 int WM8990_SOFTST ;
 int WM8990_VMIDTOG ;
 int WM8990_VMID_MODE_MASK ;
 int msecs_to_jiffies (int) ;
 int msleep (int ) ;
 int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm8990_set_bias_level(struct snd_soc_codec *codec,
 enum snd_soc_bias_level level)
{
 u16 val;

 switch (level) {
 case 130:
  break;

 case 129:

  val = snd_soc_read(codec, WM8990_POWER_MANAGEMENT_1) &
   ~WM8990_VMID_MODE_MASK;
  snd_soc_write(codec, WM8990_POWER_MANAGEMENT_1, val | 0x2);
  break;

 case 128:
  if (codec->bias_level == 131) {

   snd_soc_write(codec, WM8990_ANTIPOP1, WM8990_DIS_LLINE |
    WM8990_DIS_RLINE | WM8990_DIS_OUT3 |
    WM8990_DIS_OUT4 | WM8990_DIS_LOUT |
    WM8990_DIS_ROUT);


   snd_soc_write(codec, WM8990_ANTIPOP2, WM8990_SOFTST |
         WM8990_BUFDCOPEN | WM8990_POBCTRL |
         WM8990_VMIDTOG);


   msleep(msecs_to_jiffies(300));


   snd_soc_write(codec, WM8990_ANTIPOP2, WM8990_SOFTST |
         WM8990_BUFDCOPEN | WM8990_POBCTRL);


   snd_soc_write(codec, WM8990_ANTIPOP1, 0);


   snd_soc_write(codec, WM8990_POWER_MANAGEMENT_1, 0x1b00);

   msleep(msecs_to_jiffies(50));


   snd_soc_write(codec, WM8990_POWER_MANAGEMENT_1, 0x1f02);

   msleep(msecs_to_jiffies(100));


   snd_soc_write(codec, WM8990_POWER_MANAGEMENT_1, 0x1f03);

   msleep(msecs_to_jiffies(600));


   snd_soc_write(codec, WM8990_ANTIPOP2, WM8990_SOFTST |
         WM8990_BUFDCOPEN | WM8990_POBCTRL |
         WM8990_BUFIOEN);


   snd_soc_write(codec, WM8990_POWER_MANAGEMENT_1, 0x3);


   snd_soc_write(codec, WM8990_ANTIPOP2, WM8990_BUFIOEN);


   snd_soc_write(codec, WM8990_EXT_ACCESS_ENA, 0x2);
   snd_soc_write(codec, WM8990_EXT_CTL1, 0xa003);
   snd_soc_write(codec, WM8990_EXT_ACCESS_ENA, 0);
  }


  val = snd_soc_read(codec, WM8990_POWER_MANAGEMENT_1) &
   ~WM8990_VMID_MODE_MASK;
  snd_soc_write(codec, WM8990_POWER_MANAGEMENT_1, val | 0x4);
  break;

 case 131:

  snd_soc_write(codec, WM8990_ANTIPOP2, WM8990_SOFTST |
   WM8990_POBCTRL | WM8990_BUFIOEN);


  snd_soc_write(codec, WM8990_ANTIPOP2, WM8990_SOFTST |
   WM8990_BUFDCOPEN | WM8990_POBCTRL |
   WM8990_BUFIOEN);


  val = snd_soc_read(codec, WM8990_DAC_CTRL);
  snd_soc_write(codec, WM8990_DAC_CTRL, val | WM8990_DAC_MUTE);


  snd_soc_write(codec, WM8990_POWER_MANAGEMENT_1, 0x1f03);


  snd_soc_write(codec, WM8990_POWER_MANAGEMENT_1, 0x1f01);

  msleep(msecs_to_jiffies(300));


  snd_soc_write(codec, WM8990_ANTIPOP1, WM8990_DIS_LLINE |
   WM8990_DIS_RLINE | WM8990_DIS_OUT3 |
   WM8990_DIS_OUT4 | WM8990_DIS_LOUT |
   WM8990_DIS_ROUT);


  snd_soc_write(codec, WM8990_POWER_MANAGEMENT_1, 0x0);


  snd_soc_write(codec, WM8990_ANTIPOP2, 0x0);
  break;
 }

 codec->bias_level = level;
 return 0;
}
