
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;


 int WM8728_DACCTL ;
 int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm8728_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_codec *codec = dai->codec;
 u16 mute_reg = snd_soc_read(codec, WM8728_DACCTL);

 if (mute)
  snd_soc_write(codec, WM8728_DACCTL, mute_reg | 1);
 else
  snd_soc_write(codec, WM8728_DACCTL, mute_reg & ~1);

 return 0;
}
