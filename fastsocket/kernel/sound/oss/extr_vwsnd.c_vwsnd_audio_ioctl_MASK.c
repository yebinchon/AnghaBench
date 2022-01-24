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
struct TYPE_2__ {int /*<<< orphan*/  io_mutex; } ;
typedef  TYPE_1__ vwsnd_dev_t ;
struct inode {int dummy; } ;
struct file {scalar_t__ private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct inode*,struct file*,unsigned int,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct inode *inode,
				struct file *file,
				unsigned int cmd,
				unsigned long arg)
{
	vwsnd_dev_t *devc = (vwsnd_dev_t *) file->private_data;
	int ret;

	FUNC0(&devc->io_mutex);
	ret = FUNC2(inode, file, cmd, arg);
	FUNC1(&devc->io_mutex);
	return ret;
}