
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_codec {int bias_level; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;






 int WM8580_ADC_CONTROL1 ;
 int WM8580_PWRDN1 ;
 int WM8580_PWRDN1_ALLDACPD ;
 int WM8580_PWRDN1_PWDN ;
 int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm8580_set_bias_level(struct snd_soc_codec *codec,
 enum snd_soc_bias_level level)
{
 u16 reg;
 switch (level) {
 case 130:
 case 129:
  break;

 case 128:
  if (codec->bias_level == 131) {

   reg = snd_soc_read(codec, WM8580_PWRDN1);
   reg &= ~(WM8580_PWRDN1_PWDN | WM8580_PWRDN1_ALLDACPD);
   snd_soc_write(codec, WM8580_PWRDN1, reg);


   reg = snd_soc_read(codec, WM8580_ADC_CONTROL1);
   reg &= ~0x100;
   snd_soc_write(codec, WM8580_ADC_CONTROL1, reg);
  }
  break;

 case 131:
  reg = snd_soc_read(codec, WM8580_PWRDN1);
  snd_soc_write(codec, WM8580_PWRDN1, reg | WM8580_PWRDN1_PWDN);
  break;
 }
 codec->bias_level = level;
 return 0;
}
