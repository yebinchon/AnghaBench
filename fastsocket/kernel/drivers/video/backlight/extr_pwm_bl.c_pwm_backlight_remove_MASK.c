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
struct pwm_bl_data {int /*<<< orphan*/  pwm; int /*<<< orphan*/  period; } ;
struct platform_pwm_backlight_data {int /*<<< orphan*/  (* exit ) (TYPE_1__*) ;} ;
struct TYPE_2__ {struct platform_pwm_backlight_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct backlight_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct backlight_device*) ; 
 struct pwm_bl_data* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pwm_bl_data*) ; 
 struct backlight_device* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct platform_pwm_backlight_data *data = pdev->dev.platform_data;
	struct backlight_device *bl = FUNC3(pdev);
	struct pwm_bl_data *pb = FUNC1(&bl->dev);

	FUNC0(bl);
	FUNC4(pb->pwm, 0, pb->period);
	FUNC5(pb->pwm);
	FUNC6(pb->pwm);
	FUNC2(pb);
	if (data->exit)
		data->exit(&pdev->dev);
	return 0;
}