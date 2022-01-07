
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_codec {int dummy; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;






 int WM8940_OUTPUTCTL ;
 int WM8940_POWER1 ;
 int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm8940_set_bias_level(struct snd_soc_codec *codec,
     enum snd_soc_bias_level level)
{
 u16 val;
 u16 pwr_reg = snd_soc_read(codec, WM8940_POWER1) & 0x1F0;
 int ret = 0;

 switch (level) {
 case 130:

  pwr_reg |= (1 << 2) | (1 << 3);

  val = snd_soc_read(codec, WM8940_OUTPUTCTL);
  ret = snd_soc_write(codec, WM8940_OUTPUTCTL, val | 0x2);
  if (ret)
   break;

  ret = snd_soc_write(codec, WM8940_POWER1, pwr_reg | 0x1);
  break;
 case 129:

  pwr_reg |= (1 << 2) | (1 << 3);
  ret = snd_soc_write(codec, WM8940_POWER1, pwr_reg | 0x1);
  break;
 case 128:

  pwr_reg |= (1 << 2) | (1 << 3);

  ret = snd_soc_write(codec, WM8940_POWER1, pwr_reg | 0x2);
  break;
 case 131:
  ret = snd_soc_write(codec, WM8940_POWER1, pwr_reg);
  break;
 }

 return ret;
}
