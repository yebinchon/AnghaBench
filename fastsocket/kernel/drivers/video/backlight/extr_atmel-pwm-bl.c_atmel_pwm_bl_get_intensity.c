
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct backlight_device {int dummy; } ;
struct atmel_pwm_bl {int pwmc; TYPE_1__* pdata; } ;
struct TYPE_2__ {int pwm_duty_min; int pwm_duty_max; scalar_t__ pwm_active_low; } ;


 int PWM_CDTY ;
 struct atmel_pwm_bl* bl_get_data (struct backlight_device*) ;
 int pwm_channel_readl (int *,int ) ;

__attribute__((used)) static int atmel_pwm_bl_get_intensity(struct backlight_device *bd)
{
 struct atmel_pwm_bl *pwmbl = bl_get_data(bd);
 u8 intensity;

 if (pwmbl->pdata->pwm_active_low) {
  intensity = pwm_channel_readl(&pwmbl->pwmc, PWM_CDTY) -
   pwmbl->pdata->pwm_duty_min;
 } else {
  intensity = pwmbl->pdata->pwm_duty_max -
   pwm_channel_readl(&pwmbl->pwmc, PWM_CDTY);
 }

 return intensity;
}
