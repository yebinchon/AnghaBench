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
typedef  size_t ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_contrast ) (struct display_device*,int) ;} ;

/* Variables and functions */
 size_t EINVAL ; 
 struct display_device* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (char) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int FUNC6 (char const*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct display_device*,int) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
					struct device_attribute *attr,
					const char *buf, size_t count)
{
	struct display_device *dsp = FUNC0(dev);
	ssize_t ret = -EINVAL, size;
	int contrast;
	char *endp;

	contrast = FUNC6(buf, &endp, 0);
	size = endp - buf;

	if (FUNC1(*endp))
		size++;

	if (size != count)
		return ret;

	FUNC3(&dsp->lock);
	if (FUNC2(dsp->driver && dsp->driver->set_contrast)) {
		FUNC5("display: set contrast to %d\n", contrast);
		dsp->driver->set_contrast(dsp, contrast);
		ret = count;
	}
	FUNC4(&dsp->lock);
	return ret;
}