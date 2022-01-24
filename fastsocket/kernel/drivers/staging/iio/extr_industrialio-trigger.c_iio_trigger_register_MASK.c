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
struct iio_trigger {int /*<<< orphan*/  dev; int /*<<< orphan*/  list; scalar_t__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned long) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iio_trigger_list ; 
 int /*<<< orphan*/  iio_trigger_list_lock ; 
 int FUNC3 (struct iio_trigger*) ; 
 int FUNC4 (struct iio_trigger*) ; 
 int /*<<< orphan*/  FUNC5 (struct iio_trigger*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct iio_trigger *trig_info)
{
	int ret;

	ret = FUNC3(trig_info);
	if (ret)
		goto error_ret;
	/* Set the name used for the sysfs directory etc */
	FUNC0(&trig_info->dev, "trigger%ld",
		     (unsigned long) trig_info->id);

	ret = FUNC1(&trig_info->dev);
	if (ret)
		goto error_unregister_id;

	ret = FUNC4(trig_info);
	if (ret)
		goto error_device_del;

	/* Add to list of available triggers held by the IIO core */
	FUNC7(&iio_trigger_list_lock);
	FUNC6(&trig_info->list, &iio_trigger_list);
	FUNC8(&iio_trigger_list_lock);

	return 0;

error_device_del:
	FUNC2(&trig_info->dev);
error_unregister_id:
	FUNC5(trig_info);
error_ret:
	return ret;
}