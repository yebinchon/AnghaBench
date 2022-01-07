
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int GPIO_E750_SPK_AMP_OFF ;
 int SND_SOC_DAPM_POST_PMD ;
 int SND_SOC_DAPM_PRE_PMU ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static int e750_spk_amp_event(struct snd_soc_dapm_widget *w,
    struct snd_kcontrol *kcontrol, int event)
{
 if (event & SND_SOC_DAPM_PRE_PMU)
  gpio_set_value(GPIO_E750_SPK_AMP_OFF, 0);
 else if (event & SND_SOC_DAPM_POST_PMD)
  gpio_set_value(GPIO_E750_SPK_AMP_OFF, 1);

 return 0;
}
