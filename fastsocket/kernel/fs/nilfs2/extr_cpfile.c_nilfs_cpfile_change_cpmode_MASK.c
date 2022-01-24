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
struct the_nilfs {int dummy; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  __u64 ;
struct TYPE_2__ {struct the_nilfs* mi_nilfs; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
#define  NILFS_CHECKPOINT 129 
 TYPE_1__* FUNC0 (struct inode*) ; 
#define  NILFS_SNAPSHOT 128 
 int /*<<< orphan*/  FUNC1 (struct the_nilfs*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 

int FUNC4(struct inode *cpfile, __u64 cno, int mode)
{
	struct the_nilfs *nilfs;
	int ret;

	nilfs = FUNC0(cpfile)->mi_nilfs;

	switch (mode) {
	case NILFS_CHECKPOINT:
		/*
		 * Check for protecting existing snapshot mounts:
		 * ns_mount_mutex is used to make this operation atomic and
		 * exclusive with a new mount job.  Though it doesn't cover
		 * umount, it's enough for the purpose.
		 */
		if (FUNC1(nilfs, cno, 1)) {
			/* Current implementation does not have to protect
			   plain read-only mounts since they are exclusive
			   with a read/write mount and are protected from the
			   cleaner. */
			ret = -EBUSY;
		} else
			ret = FUNC2(cpfile, cno);
		return ret;
	case NILFS_SNAPSHOT:
		return FUNC3(cpfile, cno);
	default:
		return -EINVAL;
	}
}