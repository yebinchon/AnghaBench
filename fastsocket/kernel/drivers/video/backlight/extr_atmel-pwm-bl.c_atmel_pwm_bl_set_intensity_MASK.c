#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int brightness; scalar_t__ power; scalar_t__ fb_blank; } ;
struct backlight_device {TYPE_1__ props; } ;
struct atmel_pwm_bl {int gpio_on; TYPE_2__* pdata; int /*<<< orphan*/  pwmc; } ;
struct TYPE_4__ {int pwm_duty_min; int pwm_duty_max; int on_active_low; scalar_t__ pwm_active_low; } ;

/* Variables and functions */
 scalar_t__ FB_BLANK_UNBLANK ; 
 int /*<<< orphan*/  PWM_CUPD ; 
 struct atmel_pwm_bl* FUNC0 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct backlight_device *bd)
{
	struct atmel_pwm_bl *pwmbl = FUNC0(bd);
	int intensity = bd->props.brightness;
	int pwm_duty;

	if (bd->props.power != FB_BLANK_UNBLANK)
		intensity = 0;
	if (bd->props.fb_blank != FB_BLANK_UNBLANK)
		intensity = 0;

	if (pwmbl->pdata->pwm_active_low)
		pwm_duty = pwmbl->pdata->pwm_duty_min + intensity;
	else
		pwm_duty = pwmbl->pdata->pwm_duty_max - intensity;

	if (pwm_duty > pwmbl->pdata->pwm_duty_max)
		pwm_duty = pwmbl->pdata->pwm_duty_max;
	if (pwm_duty < pwmbl->pdata->pwm_duty_min)
		pwm_duty = pwmbl->pdata->pwm_duty_min;

	if (!intensity) {
		if (pwmbl->gpio_on != -1) {
			FUNC1(pwmbl->gpio_on,
					0 ^ pwmbl->pdata->on_active_low);
		}
		FUNC4(&pwmbl->pwmc, PWM_CUPD, pwm_duty);
		FUNC2(&pwmbl->pwmc);
	} else {
		FUNC3(&pwmbl->pwmc);
		FUNC4(&pwmbl->pwmc, PWM_CUPD, pwm_duty);
		if (pwmbl->gpio_on != -1) {
			FUNC1(pwmbl->gpio_on,
					1 ^ pwmbl->pdata->on_active_low);
		}
	}

	return 0;
}