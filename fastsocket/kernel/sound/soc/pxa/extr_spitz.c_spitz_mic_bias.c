
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int AKITA_GPIO_MIC_BIAS ;
 int SND_SOC_DAPM_EVENT_ON (int) ;
 int SPITZ_GPIO_MIC_BIAS ;
 int gpio_set_value (int ,int ) ;
 scalar_t__ machine_is_akita () ;
 scalar_t__ machine_is_borzoi () ;
 scalar_t__ machine_is_spitz () ;

__attribute__((used)) static int spitz_mic_bias(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *k, int event)
{
 if (machine_is_borzoi() || machine_is_spitz())
  gpio_set_value(SPITZ_GPIO_MIC_BIAS,
    SND_SOC_DAPM_EVENT_ON(event));

 if (machine_is_akita())
  gpio_set_value(AKITA_GPIO_MIC_BIAS,
    SND_SOC_DAPM_EVENT_ON(event));

 return 0;
}
