
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;


 int EINVAL ;
 int WM8960_ADDCTL1 ;
 int WM8960_CLOCK1 ;
 int WM8960_CLOCK2 ;



 int WM8960_PLL1 ;



 int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm8960_set_dai_clkdiv(struct snd_soc_dai *codec_dai,
  int div_id, int div)
{
 struct snd_soc_codec *codec = codec_dai->codec;
 u16 reg;

 switch (div_id) {
 case 129:
  reg = snd_soc_read(codec, WM8960_CLOCK1) & 0x1fe;
  snd_soc_write(codec, WM8960_CLOCK1, reg | div);
  break;
 case 130:
  reg = snd_soc_read(codec, WM8960_CLOCK1) & 0x1f9;
  snd_soc_write(codec, WM8960_CLOCK1, reg | div);
  break;
 case 133:
  reg = snd_soc_read(codec, WM8960_CLOCK1) & 0x1c7;
  snd_soc_write(codec, WM8960_CLOCK1, reg | div);
  break;
 case 131:
  reg = snd_soc_read(codec, WM8960_PLL1) & 0x03f;
  snd_soc_write(codec, WM8960_PLL1, reg | div);
  break;
 case 132:
  reg = snd_soc_read(codec, WM8960_CLOCK2) & 0x03f;
  snd_soc_write(codec, WM8960_CLOCK2, reg | div);
  break;
 case 128:
  reg = snd_soc_read(codec, WM8960_ADDCTL1) & 0x1fd;
  snd_soc_write(codec, WM8960_ADDCTL1, reg | div);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
