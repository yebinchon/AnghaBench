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
struct tosa_bl_data {int dummy; } ;
struct backlight_properties {int brightness; int /*<<< orphan*/  fb_blank; int /*<<< orphan*/  power; } ;
struct backlight_device {int /*<<< orphan*/  dev; struct backlight_properties props; } ;

/* Variables and functions */
 struct tosa_bl_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tosa_bl_data*,int) ; 

__attribute__((used)) static int FUNC3(struct backlight_device *dev)
{
	struct backlight_properties *props = &dev->props;
	struct tosa_bl_data *data = FUNC0(&dev->dev);
	int power = FUNC1(props->power, props->fb_blank);
	int brightness = props->brightness;

	if (power)
		brightness = 0;

	FUNC2(data, brightness);

	return 0;
}