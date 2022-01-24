#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct lcd_ops {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  release; struct device* parent; int /*<<< orphan*/  class; } ;
struct lcd_device {struct lcd_ops* ops; TYPE_1__ dev; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  ops_lock; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct lcd_device* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct lcd_device*) ; 
 struct lcd_device* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lcd_class ; 
 int /*<<< orphan*/  lcd_device_release ; 
 int FUNC7 (struct lcd_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 

struct lcd_device *FUNC10(const char *name, struct device *parent,
		void *devdata, struct lcd_ops *ops)
{
	struct lcd_device *new_ld;
	int rc;

	FUNC9("lcd_device_register: name=%s\n", name);

	new_ld = FUNC6(sizeof(struct lcd_device), GFP_KERNEL);
	if (!new_ld)
		return FUNC0(-ENOMEM);

	FUNC8(&new_ld->ops_lock);
	FUNC8(&new_ld->update_lock);

	new_ld->dev.class = lcd_class;
	new_ld->dev.parent = parent;
	new_ld->dev.release = lcd_device_release;
	FUNC2(&new_ld->dev, name);
	FUNC1(&new_ld->dev, devdata);

	rc = FUNC3(&new_ld->dev);
	if (rc) {
		FUNC5(new_ld);
		return FUNC0(rc);
	}

	rc = FUNC7(new_ld);
	if (rc) {
		FUNC4(&new_ld->dev);
		return FUNC0(rc);
	}

	new_ld->ops = ops;

	return new_ld;
}