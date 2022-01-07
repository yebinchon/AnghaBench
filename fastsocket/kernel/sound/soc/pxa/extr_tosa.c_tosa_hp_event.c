
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 scalar_t__ SND_SOC_DAPM_EVENT_ON (int) ;
 int TOSA_GPIO_L_MUTE ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static int tosa_hp_event(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *k, int event)
{
 gpio_set_value(TOSA_GPIO_L_MUTE, SND_SOC_DAPM_EVENT_ON(event) ? 1 :0);
 return 0;
}
