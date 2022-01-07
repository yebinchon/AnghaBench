
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;


 int WM8961_ADC_DAC_CONTROL_1 ;
 int WM8961_DACMU ;
 int msleep (int) ;
 int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,int ) ;

__attribute__((used)) static int wm8961_digital_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_codec *codec = dai->codec;
 u16 reg = snd_soc_read(codec, WM8961_ADC_DAC_CONTROL_1);

 if (mute)
  reg |= WM8961_DACMU;
 else
  reg &= ~WM8961_DACMU;

 msleep(17);

 return snd_soc_write(codec, WM8961_ADC_DAC_CONTROL_1, reg);
}
