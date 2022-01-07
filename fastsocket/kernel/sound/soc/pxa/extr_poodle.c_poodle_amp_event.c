
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dapm_widget {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int POODLE_LOCOMO_GPIO_AMP_ON ;
 scalar_t__ SND_SOC_DAPM_EVENT_ON (int) ;
 int locomo_gpio_write (int *,int ,int) ;
 TYPE_1__ poodle_locomo_device ;

__attribute__((used)) static int poodle_amp_event(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *k, int event)
{
 if (SND_SOC_DAPM_EVENT_ON(event))
  locomo_gpio_write(&poodle_locomo_device.dev,
   POODLE_LOCOMO_GPIO_AMP_ON, 0);
 else
  locomo_gpio_write(&poodle_locomo_device.dev,
   POODLE_LOCOMO_GPIO_AMP_ON, 1);

 return 0;
}
