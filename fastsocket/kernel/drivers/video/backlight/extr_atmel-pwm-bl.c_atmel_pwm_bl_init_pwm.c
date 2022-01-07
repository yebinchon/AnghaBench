
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {unsigned long mck; } ;
struct atmel_pwm_bl {TYPE_5__ pwmc; TYPE_4__* pdata; TYPE_3__* pdev; TYPE_2__* bldev; } ;
struct TYPE_10__ {int pwm_frequency; int pwm_compare_max; unsigned long pwm_duty_min; } ;
struct TYPE_9__ {int dev; } ;
struct TYPE_7__ {unsigned long brightness; } ;
struct TYPE_8__ {TYPE_1__ props; } ;


 int DIV_ROUND_UP (unsigned long,int) ;
 int PWM_CDTY ;
 int PWM_CMR ;
 int PWM_CPRD ;
 int dev_info (int *,char*,int) ;
 unsigned long fls (unsigned long) ;
 int pwm_channel_enable (TYPE_5__*) ;
 int pwm_channel_writel (TYPE_5__*,int ,unsigned long) ;

__attribute__((used)) static int atmel_pwm_bl_init_pwm(struct atmel_pwm_bl *pwmbl)
{
 unsigned long pwm_rate = pwmbl->pwmc.mck;
 unsigned long prescale = DIV_ROUND_UP(pwm_rate,
   (pwmbl->pdata->pwm_frequency *
    pwmbl->pdata->pwm_compare_max)) - 1;






 prescale = fls(prescale);
 if (prescale > 0xf)
  prescale = 0xf;

 pwm_channel_writel(&pwmbl->pwmc, PWM_CMR, prescale);
 pwm_channel_writel(&pwmbl->pwmc, PWM_CDTY,
   pwmbl->pdata->pwm_duty_min +
   pwmbl->bldev->props.brightness);
 pwm_channel_writel(&pwmbl->pwmc, PWM_CPRD,
   pwmbl->pdata->pwm_compare_max);

 dev_info(&pwmbl->pdev->dev, "Atmel PWM backlight driver "
   "(%lu Hz)\n", pwmbl->pwmc.mck /
   pwmbl->pdata->pwm_compare_max /
   (1 << prescale));

 return pwm_channel_enable(&pwmbl->pwmc);
}
