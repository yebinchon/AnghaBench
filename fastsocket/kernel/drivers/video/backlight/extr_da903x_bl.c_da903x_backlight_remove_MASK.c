#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct platform_device {int dummy; } ;
struct da903x_backlight_data {int dummy; } ;
struct backlight_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct backlight_device*) ; 
 struct da903x_backlight_data* FUNC1 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct da903x_backlight_data*) ; 
 struct backlight_device* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct backlight_device *bl = FUNC3(pdev);
	struct da903x_backlight_data *data = FUNC1(bl);

	FUNC0(bl);
	FUNC2(data);
	return 0;
}