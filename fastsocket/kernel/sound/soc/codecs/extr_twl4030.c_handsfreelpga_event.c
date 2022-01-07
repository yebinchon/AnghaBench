
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int codec; } ;
struct snd_kcontrol {int dummy; } ;




 int TWL4030_REG_HFL_CTL ;
 int handsfree_ramp (int ,int ,int) ;

__attribute__((used)) static int handsfreelpga_event(struct snd_soc_dapm_widget *w,
  struct snd_kcontrol *kcontrol, int event)
{
 switch (event) {
 case 128:
  handsfree_ramp(w->codec, TWL4030_REG_HFL_CTL, 1);
  break;
 case 129:
  handsfree_ramp(w->codec, TWL4030_REG_HFL_CTL, 0);
  break;
 }
 return 0;
}
