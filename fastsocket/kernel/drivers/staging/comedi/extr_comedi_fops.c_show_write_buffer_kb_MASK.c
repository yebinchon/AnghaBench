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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct comedi_subdevice {int subdev_flags; TYPE_1__* async; } ;
struct comedi_device_file_info {TYPE_2__* device; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; } ;
struct TYPE_3__ {unsigned int prealloc_bufsz; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int SDF_CMD_WRITE ; 
 unsigned int bytes_per_kibi ; 
 struct comedi_subdevice* FUNC0 (struct comedi_device_file_info*) ; 
 struct comedi_device_file_info* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*,unsigned int) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				    struct device_attribute *attr, char *buf)
{
	ssize_t retval;
	struct comedi_device_file_info *info = FUNC1(dev);
	unsigned buffer_size_kb = 0;
	struct comedi_subdevice *const write_subdevice =
	    FUNC0(info);

	FUNC2(&info->device->mutex);
	if (write_subdevice &&
	    (write_subdevice->subdev_flags & SDF_CMD_WRITE) &&
	    write_subdevice->async) {
		buffer_size_kb = write_subdevice->async->prealloc_bufsz /
		    bytes_per_kibi;
	}
	retval = FUNC4(buf, PAGE_SIZE, "%i\n", buffer_size_kb);
	FUNC3(&info->device->mutex);

	return retval;
}