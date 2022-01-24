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
struct TYPE_4__ {struct atmel_pwm_bl_platform_data* platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_3__ {scalar_t__ max_brightness; int brightness; int /*<<< orphan*/  power; } ;
struct backlight_device {TYPE_1__ props; } ;
struct atmel_pwm_bl_platform_data {scalar_t__ pwm_compare_max; scalar_t__ pwm_duty_max; scalar_t__ pwm_duty_min; scalar_t__ pwm_frequency; int gpio_on; int on_active_low; int /*<<< orphan*/  pwm_channel; } ;
struct atmel_pwm_bl {int gpio_on; int /*<<< orphan*/  pwmc; struct backlight_device* bldev; struct atmel_pwm_bl_platform_data const* pdata; struct platform_device* pdev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FB_BLANK_UNBLANK ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct backlight_device*) ; 
 int FUNC1 (struct backlight_device*) ; 
 int FUNC2 (struct atmel_pwm_bl*) ; 
 int /*<<< orphan*/  atmel_pwm_bl_ops ; 
 int /*<<< orphan*/  FUNC3 (struct backlight_device*) ; 
 struct backlight_device* FUNC4 (char*,TYPE_2__*,struct atmel_pwm_bl*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct backlight_device*) ; 
 int FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct atmel_pwm_bl*) ; 
 struct atmel_pwm_bl* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct atmel_pwm_bl*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	const struct atmel_pwm_bl_platform_data *pdata;
	struct backlight_device *bldev;
	struct atmel_pwm_bl *pwmbl;
	int retval;

	pwmbl = FUNC10(sizeof(struct atmel_pwm_bl), GFP_KERNEL);
	if (!pwmbl)
		return -ENOMEM;

	pwmbl->pdev = pdev;

	pdata = pdev->dev.platform_data;
	if (!pdata) {
		retval = -ENODEV;
		goto err_free_mem;
	}

	if (pdata->pwm_compare_max < pdata->pwm_duty_max ||
			pdata->pwm_duty_min > pdata->pwm_duty_max ||
			pdata->pwm_frequency == 0) {
		retval = -EINVAL;
		goto err_free_mem;
	}

	pwmbl->pdata = pdata;
	pwmbl->gpio_on = pdata->gpio_on;

	retval = FUNC12(pdata->pwm_channel, &pwmbl->pwmc);
	if (retval)
		goto err_free_mem;

	if (pwmbl->gpio_on != -1) {
		retval = FUNC8(pwmbl->gpio_on, "gpio_atmel_pwm_bl");
		if (retval) {
			pwmbl->gpio_on = -1;
			goto err_free_pwm;
		}

		/* Turn display off by defatult. */
		retval = FUNC6(pwmbl->gpio_on,
				0 ^ pdata->on_active_low);
		if (retval)
			goto err_free_gpio;
	}

	bldev = FUNC4("atmel-pwm-bl",
			&pdev->dev, pwmbl, &atmel_pwm_bl_ops);
	if (FUNC0(bldev)) {
		retval = FUNC1(bldev);
		goto err_free_gpio;
	}

	pwmbl->bldev = bldev;

	FUNC11(pdev, pwmbl);

	/* Power up the backlight by default at middle intesity. */
	bldev->props.power = FB_BLANK_UNBLANK;
	bldev->props.max_brightness = pdata->pwm_duty_max - pdata->pwm_duty_min;
	bldev->props.brightness = bldev->props.max_brightness / 2;

	retval = FUNC2(pwmbl);
	if (retval)
		goto err_free_bl_dev;

	FUNC3(bldev);

	return 0;

err_free_bl_dev:
	FUNC11(pdev, NULL);
	FUNC5(bldev);
err_free_gpio:
	if (pwmbl->gpio_on != -1)
		FUNC7(pwmbl->gpio_on);
err_free_pwm:
	FUNC13(&pwmbl->pwmc);
err_free_mem:
	FUNC9(pwmbl);
	return retval;
}