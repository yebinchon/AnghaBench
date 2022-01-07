
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int SND_SOC_DAPM_POST_PMU ;
 int WARN_ON (int) ;
 int mdelay (int) ;

__attribute__((used)) static int wm8903_cp_event(struct snd_soc_dapm_widget *w,
      struct snd_kcontrol *kcontrol, int event)
{
 WARN_ON(event != SND_SOC_DAPM_POST_PMU);
 mdelay(4);

 return 0;
}
