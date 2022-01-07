
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_codec {int bias_level; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;






 int WM8961_ANTI_POP ;
 int WM8961_BUFDCOPEN ;
 int WM8961_BUFIOEN ;
 int WM8961_PWR_MGMT_1 ;
 int WM8961_VMIDSEL_MASK ;
 int WM8961_VMIDSEL_SHIFT ;
 int WM8961_VREF ;
 int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm8961_set_bias_level(struct snd_soc_codec *codec,
     enum snd_soc_bias_level level)
{
 u16 reg;






 switch (level) {
 case 130:
  break;

 case 129:
  if (codec->bias_level == 128) {

   reg = snd_soc_read(codec, WM8961_ANTI_POP);
   reg |= WM8961_BUFIOEN | WM8961_BUFDCOPEN;
   snd_soc_write(codec, WM8961_ANTI_POP, reg);


   reg = snd_soc_read(codec, WM8961_PWR_MGMT_1);
   reg &= ~WM8961_VMIDSEL_MASK;
   reg |= (1 << WM8961_VMIDSEL_SHIFT) | WM8961_VREF;
   snd_soc_write(codec, WM8961_PWR_MGMT_1, reg);
  }
  break;

 case 128:
  if (codec->bias_level == 129) {

   reg = snd_soc_read(codec, WM8961_PWR_MGMT_1);
   reg &= ~WM8961_VREF;
   snd_soc_write(codec, WM8961_PWR_MGMT_1, reg);


   reg = snd_soc_read(codec, WM8961_ANTI_POP);
   reg &= ~(WM8961_BUFIOEN | WM8961_BUFDCOPEN);
   snd_soc_write(codec, WM8961_ANTI_POP, reg);


   reg = snd_soc_read(codec, WM8961_PWR_MGMT_1);
   reg &= ~WM8961_VMIDSEL_MASK;
   snd_soc_write(codec, WM8961_PWR_MGMT_1, reg);
  }
  break;

 case 131:
  break;
 }

 codec->bias_level = level;

 return 0;
}
