
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;


 int WM8400_DAC_CTRL ;
 int WM8400_DAC_MUTE ;
 int wm8400_read (struct snd_soc_codec*,int ) ;
 int wm8400_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm8400_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_codec *codec = dai->codec;
 u16 val = wm8400_read(codec, WM8400_DAC_CTRL) & ~WM8400_DAC_MUTE;

 if (mute)
  wm8400_write(codec, WM8400_DAC_CTRL, val | WM8400_DAC_MUTE);
 else
  wm8400_write(codec, WM8400_DAC_CTRL, val);

 return 0;
}
