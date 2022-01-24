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
struct comedi_device_file_info {struct comedi_device* device; } ;
struct comedi_device {TYPE_1__* driver; int /*<<< orphan*/  attached; } ;
struct TYPE_2__ {int /*<<< orphan*/  module; } ;

/* Variables and functions */
 unsigned int COMEDI_NUM_BOARD_MINORS ; 
 struct comedi_device_file_info* FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void *FUNC4(const char *filename)
{
	struct comedi_device_file_info *dev_file_info;
	struct comedi_device *dev;
	unsigned int minor;

	if (FUNC2(filename, "/dev/comedi", 11) != 0)
		return NULL;

	minor = FUNC1(filename + 11, NULL, 0);

	if (minor >= COMEDI_NUM_BOARD_MINORS)
		return NULL;

	dev_file_info = FUNC0(minor);
	if (dev_file_info == NULL)
		return NULL;
	dev = dev_file_info->device;

	if (dev == NULL || !dev->attached)
		return NULL;

	if (!FUNC3(dev->driver->module))
		return NULL;

	return (void *)dev;
}