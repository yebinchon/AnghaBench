
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;
struct snd_kcontrol {int dummy; } ;




 int configure_clock (struct snd_soc_codec*) ;

__attribute__((used)) static int clk_sys_event(struct snd_soc_dapm_widget *w,
    struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_codec *codec = w->codec;

 switch (event) {
 case 128:
  return configure_clock(codec);

 case 129:
  break;
 }

 return 0;
}
