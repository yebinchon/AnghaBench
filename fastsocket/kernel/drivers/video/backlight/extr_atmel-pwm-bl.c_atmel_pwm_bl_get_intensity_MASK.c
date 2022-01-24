#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct backlight_device {int dummy; } ;
struct atmel_pwm_bl {int /*<<< orphan*/  pwmc; TYPE_1__* pdata; } ;
struct TYPE_2__ {int pwm_duty_min; int pwm_duty_max; scalar_t__ pwm_active_low; } ;

/* Variables and functions */
 int /*<<< orphan*/  PWM_CDTY ; 
 struct atmel_pwm_bl* FUNC0 (struct backlight_device*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct backlight_device *bd)
{
	struct atmel_pwm_bl *pwmbl = FUNC0(bd);
	u8 intensity;

	if (pwmbl->pdata->pwm_active_low) {
		intensity = FUNC1(&pwmbl->pwmc, PWM_CDTY) -
			pwmbl->pdata->pwm_duty_min;
	} else {
		intensity = pwmbl->pdata->pwm_duty_max -
			FUNC1(&pwmbl->pwmc, PWM_CDTY);
	}

	return intensity;
}