#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct file {TYPE_1__* f_dentry; } ;
struct comedi_subdevice {TYPE_2__* async; int /*<<< orphan*/  busy; } ;
struct comedi_device_file_info {struct comedi_device* device; } ;
struct comedi_device {int /*<<< orphan*/  mutex; int /*<<< orphan*/  minor; int /*<<< orphan*/  attached; } ;
typedef  int /*<<< orphan*/  poll_table ;
struct TYPE_6__ {int /*<<< orphan*/  subdevice; int /*<<< orphan*/  prealloc_bufsz; int /*<<< orphan*/  wait_head; } ;
struct TYPE_5__ {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 unsigned int POLLIN ; 
 unsigned int POLLOUT ; 
 unsigned int POLLRDNORM ; 
 unsigned int POLLWRNORM ; 
 int SRF_RUNNING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 struct comedi_device_file_info* FUNC5 (unsigned int const) ; 
 struct comedi_subdevice* FUNC6 (struct comedi_device_file_info*) ; 
 int FUNC7 (struct comedi_subdevice*) ; 
 struct comedi_subdevice* FUNC8 (struct comedi_device_file_info*) ; 
 unsigned int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int FUNC13(struct file *file, poll_table * wait)
{
	unsigned int mask = 0;
	const unsigned minor = FUNC9(file->f_dentry->d_inode);
	struct comedi_device_file_info *dev_file_info =
	    FUNC5(minor);
	struct comedi_device *dev = dev_file_info->device;
	struct comedi_subdevice *read_subdev;
	struct comedi_subdevice *write_subdev;

	FUNC10(&dev->mutex);
	if (!dev->attached) {
		FUNC0("no driver configured on comedi%i\n", dev->minor);
		FUNC11(&dev->mutex);
		return 0;
	}

	mask = 0;
	read_subdev = FUNC6(dev_file_info);
	if (read_subdev) {
		FUNC12(file, &read_subdev->async->wait_head, wait);
		if (!read_subdev->busy
		    || FUNC2(read_subdev->async) > 0
		    || !(FUNC7(read_subdev) &
			 SRF_RUNNING)) {
			mask |= POLLIN | POLLRDNORM;
		}
	}
	write_subdev = FUNC8(dev_file_info);
	if (write_subdev) {
		FUNC12(file, &write_subdev->async->wait_head, wait);
		FUNC3(write_subdev->async,
				       write_subdev->async->prealloc_bufsz);
		if (!write_subdev->busy
		    || !(FUNC7(write_subdev) &
			 SRF_RUNNING)
		    || FUNC4(write_subdev->async) >=
		    FUNC1(write_subdev->async->subdevice)) {
			mask |= POLLOUT | POLLWRNORM;
		}
	}

	FUNC11(&dev->mutex);
	return mask;
}