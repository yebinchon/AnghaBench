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
struct device {int dummy; } ;
struct backlight_ops {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  release; struct device* parent; int /*<<< orphan*/  class; } ;
struct backlight_device {struct backlight_ops* ops; TYPE_1__ dev; int /*<<< orphan*/  ops_lock; int /*<<< orphan*/  update_lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct backlight_device* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  backlight_class ; 
 int FUNC1 (struct backlight_device*) ; 
 int /*<<< orphan*/  bl_device_release ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct backlight_device*) ; 
 struct backlight_device* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct backlight_device* pmac_backlight ; 
 int /*<<< orphan*/  pmac_backlight_mutex ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*) ; 

struct backlight_device *FUNC12(const char *name,
		struct device *parent, void *devdata, struct backlight_ops *ops)
{
	struct backlight_device *new_bd;
	int rc;

	FUNC11("backlight_device_register: name=%s\n", name);

	new_bd = FUNC7(sizeof(struct backlight_device), GFP_KERNEL);
	if (!new_bd)
		return FUNC0(-ENOMEM);

	FUNC8(&new_bd->update_lock);
	FUNC8(&new_bd->ops_lock);

	new_bd->dev.class = backlight_class;
	new_bd->dev.parent = parent;
	new_bd->dev.release = bl_device_release;
	FUNC3(&new_bd->dev, name);
	FUNC2(&new_bd->dev, devdata);

	rc = FUNC4(&new_bd->dev);
	if (rc) {
		FUNC6(new_bd);
		return FUNC0(rc);
	}

	rc = FUNC1(new_bd);
	if (rc) {
		FUNC5(&new_bd->dev);
		return FUNC0(rc);
	}

	new_bd->ops = ops;

#ifdef CONFIG_PMAC_BACKLIGHT
	mutex_lock(&pmac_backlight_mutex);
	if (!pmac_backlight)
		pmac_backlight = new_bd;
	mutex_unlock(&pmac_backlight_mutex);
#endif

	return new_bd;
}