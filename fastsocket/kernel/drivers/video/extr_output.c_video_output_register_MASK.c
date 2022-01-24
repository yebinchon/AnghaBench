#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct output_properties {int dummy; } ;
struct TYPE_4__ {struct device* parent; int /*<<< orphan*/ * class; } ;
struct output_device {TYPE_1__ dev; struct output_properties* props; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct output_device* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct output_device*) ; 
 struct output_device* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  video_output_class ; 

struct output_device *FUNC6(const char *name,
	struct device *dev,
	void *devdata,
	struct output_properties *op)
{
	struct output_device *new_dev;
	int ret_code = 0;

	new_dev = FUNC5(sizeof(struct output_device),GFP_KERNEL);
	if (!new_dev) {
		ret_code = -ENOMEM;
		goto error_return;
	}
	new_dev->props = op;
	new_dev->dev.class = &video_output_class;
	new_dev->dev.parent = dev;
	FUNC2(&new_dev->dev, name);
	FUNC1(&new_dev->dev, devdata);
	ret_code = FUNC3(&new_dev->dev);
	if (ret_code) {
		FUNC4(new_dev);
		goto error_return;
	}
	return new_dev;

error_return:
	return FUNC0(ret_code);
}