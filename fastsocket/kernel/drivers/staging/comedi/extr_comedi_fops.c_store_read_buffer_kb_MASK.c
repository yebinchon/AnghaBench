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
typedef  unsigned long uint64_t ;
typedef  unsigned long uint32_t ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct comedi_subdevice {int subdev_flags; int /*<<< orphan*/ * async; } ;
struct comedi_device_file_info {TYPE_1__* device; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int EINVAL ; 
 int SDF_CMD_READ ; 
 unsigned long bytes_per_kibi ; 
 struct comedi_subdevice* FUNC0 (struct comedi_device_file_info*) ; 
 struct comedi_device_file_info* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,struct comedi_subdevice* const,int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (char const*,int,unsigned long*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				    struct device_attribute *attr,
				    const char *buf, size_t count)
{
	struct comedi_device_file_info *info = FUNC1(dev);
	unsigned long new_size_kb;
	uint64_t new_size;
	int retval;
	struct comedi_subdevice *const read_subdevice =
	    FUNC0(info);

	if (FUNC5(buf, 10, &new_size_kb))
		return -EINVAL;
	if (new_size_kb != (uint32_t) new_size_kb)
		return -EINVAL;
	new_size = ((uint64_t) new_size_kb) * bytes_per_kibi;
	if (new_size != (uint32_t) new_size)
		return -EINVAL;

	FUNC2(&info->device->mutex);
	if (read_subdevice == NULL ||
	    (read_subdevice->subdev_flags & SDF_CMD_READ) == 0 ||
	    read_subdevice->async == NULL) {
		FUNC3(&info->device->mutex);
		return -EINVAL;
	}
	retval = FUNC4(info->device, read_subdevice,
				     read_subdevice->async, new_size);
	FUNC3(&info->device->mutex);

	if (retval < 0)
		return retval;
	return count;
}