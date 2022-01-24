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
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mnt; } ;
struct file {TYPE_1__ f_path; } ;

/* Variables and functions */
 int EACCES ; 
 int FUNC0 (struct inode*,struct file*,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned int) ; 

int FUNC4(struct inode *inode, struct file *filp,
	      unsigned int cmd, unsigned long arg)
{
	int ret;

	if (FUNC3(cmd)) {
		/*
		 * inside the ioctl(), any failures which
		 * are because of file_permission() are
		 * -EACCESS, so it seems consistent to keep
		 *  that here.
		 */
		if (FUNC2(filp->f_path.mnt))
			return -EACCES;
	}
	ret = FUNC0(inode, filp, cmd, arg);
	if (FUNC3(cmd))
		FUNC1(filp->f_path.mnt);
	return ret;
}