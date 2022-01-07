
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;
struct snd_kcontrol {int dummy; } ;




 int WM9081_POWER_MANAGEMENT ;
 unsigned int WM9081_SPK_ENA ;
 unsigned int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,unsigned int) ;

__attribute__((used)) static int speaker_event(struct snd_soc_dapm_widget *w,
    struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_codec *codec = w->codec;
 unsigned int reg = snd_soc_read(codec, WM9081_POWER_MANAGEMENT);

 switch (event) {
 case 129:
  reg |= WM9081_SPK_ENA;
  break;

 case 128:
  reg &= ~WM9081_SPK_ENA;
  break;
 }

 snd_soc_write(codec, WM9081_POWER_MANAGEMENT, reg);

 return 0;
}
