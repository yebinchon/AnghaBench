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
struct file {int dummy; } ;
struct autofs_sb_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  devid; } ;
struct autofs_dev_ioctl {int ioctlfd; char* path; TYPE_1__ openmount; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct file *fp,
				      struct autofs_sb_info *sbi,
				      struct autofs_dev_ioctl *param)
{
	const char *path;
	dev_t devid;
	int err, fd;

	/* param->path has already been checked */
	if (!param->openmount.devid)
		return -EINVAL;

	param->ioctlfd = -1;

	path = param->path;
	devid = FUNC1(param->openmount.devid);

	err = 0;
	fd = FUNC0(path, devid);
	if (FUNC2(fd < 0)) {
		err = fd;
		goto out;
	}

	param->ioctlfd = fd;
out:
	return err;
}