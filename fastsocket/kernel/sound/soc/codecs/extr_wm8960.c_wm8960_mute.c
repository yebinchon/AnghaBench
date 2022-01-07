
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;


 int WM8960_DACCTL1 ;
 int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm8960_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_codec *codec = dai->codec;
 u16 mute_reg = snd_soc_read(codec, WM8960_DACCTL1) & 0xfff7;

 if (mute)
  snd_soc_write(codec, WM8960_DACCTL1, mute_reg | 0x8);
 else
  snd_soc_write(codec, WM8960_DACCTL1, mute_reg);
 return 0;
}
