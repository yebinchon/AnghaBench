
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dapm_widget {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int BUG () ;


 int WM8993_ANTIPOP1 ;
 int WM8993_HPOUT2_IN_ENA ;
 int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int earpiece_event(struct snd_soc_dapm_widget *w,
     struct snd_kcontrol *control, int event)
{
 struct snd_soc_codec *codec = w->codec;
 u16 reg = snd_soc_read(codec, WM8993_ANTIPOP1) & ~WM8993_HPOUT2_IN_ENA;

 switch (event) {
 case 128:
  reg |= WM8993_HPOUT2_IN_ENA;
  snd_soc_write(codec, WM8993_ANTIPOP1, reg);
  udelay(50);
  break;

 case 129:
  snd_soc_write(codec, WM8993_ANTIPOP1, reg);
  break;

 default:
  BUG();
  break;
 }

 return 0;
}
