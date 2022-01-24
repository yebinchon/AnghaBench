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
struct display_device {int /*<<< orphan*/  lock; TYPE_1__* driver; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int max_contrast; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 struct display_device* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
					struct device_attribute *attr,
					char *buf)
{
	struct display_device *dsp = FUNC0(dev);
	ssize_t rc = -ENXIO;

	FUNC2(&dsp->lock);
	if (FUNC1(dsp->driver))
		rc = FUNC4(buf, "%d\n", dsp->driver->max_contrast);
	FUNC3(&dsp->lock);
	return rc;
}