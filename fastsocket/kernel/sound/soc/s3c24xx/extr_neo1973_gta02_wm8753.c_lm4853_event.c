
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int GTA02_GPIO_AMP_SHUT ;
 int SND_SOC_DAPM_EVENT_OFF (int ) ;
 int gpio_set_value (int ,int ) ;
 int value ;

__attribute__((used)) static int lm4853_event(struct snd_soc_dapm_widget *w,
   struct snd_kcontrol *k,
   int event)
{
 gpio_set_value(GTA02_GPIO_AMP_SHUT, SND_SOC_DAPM_EVENT_OFF(value));

 return 0;
}
