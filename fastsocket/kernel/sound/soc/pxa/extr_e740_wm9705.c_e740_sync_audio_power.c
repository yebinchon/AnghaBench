
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int E740_AUDIO_IN ;
 int E740_AUDIO_OUT ;
 int GPIO_E740_AMP_ON ;
 int GPIO_E740_MIC_ON ;
 int GPIO_E740_WM9705_nAVDD2 ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static void e740_sync_audio_power(int status)
{
 gpio_set_value(GPIO_E740_WM9705_nAVDD2, !status);
 gpio_set_value(GPIO_E740_AMP_ON, (status & E740_AUDIO_OUT) ? 1 : 0);
 gpio_set_value(GPIO_E740_MIC_ON, (status & E740_AUDIO_IN) ? 1 : 0);
}
