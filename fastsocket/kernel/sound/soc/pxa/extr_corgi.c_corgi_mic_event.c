
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int CORGI_GPIO_MIC_BIAS ;
 int SND_SOC_DAPM_EVENT_ON (int) ;
 int gpio_set_value (int ,int ) ;

__attribute__((used)) static int corgi_mic_event(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *k, int event)
{
 gpio_set_value(CORGI_GPIO_MIC_BIAS, SND_SOC_DAPM_EVENT_ON(event));
 return 0;
}
