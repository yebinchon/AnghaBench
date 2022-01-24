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
struct display_driver {int (* probe ) (struct display_device*,void*) ;} ;
struct display_device {int /*<<< orphan*/  idx; int /*<<< orphan*/  lock; struct display_driver* driver; struct device* parent; int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct display_device* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  allocated_dsp ; 
 int /*<<< orphan*/  allocated_dsp_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct device*,int /*<<< orphan*/ ,struct display_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  display_class ; 
 int FUNC4 (int /*<<< orphan*/ *,struct display_device*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct display_device*) ; 
 struct display_device* FUNC8 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct display_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (struct display_device*,void*) ; 
 scalar_t__ FUNC14 (int) ; 

struct display_device *FUNC15(struct display_driver *driver,
						struct device *parent, void *devdata)
{
	struct display_device *new_dev = NULL;
	int ret = -EINVAL;

	if (FUNC14(!driver))
		return FUNC0(ret);

	FUNC11(&allocated_dsp_lock);
	ret = FUNC5(&allocated_dsp, GFP_KERNEL);
	FUNC12(&allocated_dsp_lock);
	if (!ret)
		return FUNC0(ret);

	new_dev = FUNC8(sizeof(struct display_device), GFP_KERNEL);
	if (FUNC9(new_dev) && FUNC14(driver->probe(new_dev, devdata))) {
		// Reserve the index for this display
		FUNC11(&allocated_dsp_lock);
		ret = FUNC4(&allocated_dsp, new_dev, &new_dev->idx);
		FUNC12(&allocated_dsp_lock);

		if (!ret) {
			new_dev->dev = FUNC3(display_class, parent,
						     FUNC2(0, 0), new_dev,
						     "display%d", new_dev->idx);
			if (!FUNC1(new_dev->dev)) {
				new_dev->parent = parent;
				new_dev->driver = driver;
				FUNC10(&new_dev->lock);
				return new_dev;
			}
			FUNC11(&allocated_dsp_lock);
			FUNC6(&allocated_dsp, new_dev->idx);
			FUNC12(&allocated_dsp_lock);
			ret = -EINVAL;
		}
	}
	FUNC7(new_dev);
	return FUNC0(ret);
}