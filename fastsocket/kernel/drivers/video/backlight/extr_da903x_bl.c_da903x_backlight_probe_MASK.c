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
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct platform_device {int id; TYPE_2__ dev; int /*<<< orphan*/  name; } ;
struct da903x_backlight_data {int id; int /*<<< orphan*/  da903x_dev; scalar_t__ current_brightness; } ;
struct TYPE_3__ {int max_brightness; int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;

/* Variables and functions */
#define  DA9030_ID_WLED 129 
 int DA9030_MAX_BRIGHTNESS ; 
#define  DA9034_ID_WLED 128 
 int DA9034_MAX_BRIGHTNESS ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct backlight_device*) ; 
 int FUNC1 (struct backlight_device*) ; 
 struct backlight_device* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct da903x_backlight_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct backlight_device*) ; 
 int /*<<< orphan*/  da903x_backlight_ops ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct da903x_backlight_data*) ; 
 struct da903x_backlight_data* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct backlight_device*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct da903x_backlight_data *data;
	struct backlight_device *bl;
	int max_brightness;

	data = FUNC6(sizeof(*data), GFP_KERNEL);
	if (data == NULL)
		return -ENOMEM;

	switch (pdev->id) {
	case DA9030_ID_WLED:
		max_brightness = DA9030_MAX_BRIGHTNESS;
		break;
	case DA9034_ID_WLED:
		max_brightness = DA9034_MAX_BRIGHTNESS;
		break;
	default:
		FUNC4(&pdev->dev, "invalid backlight device ID(%d)\n",
				pdev->id);
		FUNC5(data);
		return -EINVAL;
	}

	data->id = pdev->id;
	data->da903x_dev = pdev->dev.parent;
	data->current_brightness = 0;

	bl = FUNC2(pdev->name, data->da903x_dev,
			data, &da903x_backlight_ops);
	if (FUNC0(bl)) {
		FUNC4(&pdev->dev, "failed to register backlight\n");
		FUNC5(data);
		return FUNC1(bl);
	}

	bl->props.max_brightness = max_brightness;
	bl->props.brightness = max_brightness;

	FUNC7(pdev, bl);
	FUNC3(bl);
	return 0;
}