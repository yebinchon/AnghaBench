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
struct file {TYPE_1__* f_dentry; } ;
struct comedi_device_file_info {struct comedi_device* device; } ;
struct comedi_device {int /*<<< orphan*/  async_queue; } ;
struct TYPE_2__ {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 struct comedi_device_file_info* FUNC0 (unsigned int const) ; 
 int FUNC1 (int,struct file*,int,int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(int fd, struct file *file, int on)
{
	const unsigned minor = FUNC2(file->f_dentry->d_inode);
	struct comedi_device_file_info *dev_file_info =
	    FUNC0(minor);

	struct comedi_device *dev = dev_file_info->device;

	return FUNC1(fd, file, on, &dev->async_queue);
}