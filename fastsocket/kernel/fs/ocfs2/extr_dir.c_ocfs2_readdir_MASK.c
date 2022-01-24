#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct TYPE_5__ {TYPE_1__* dentry; } ;
struct file {int /*<<< orphan*/  f_pos; int /*<<< orphan*/  f_version; int /*<<< orphan*/  f_vfsmnt; TYPE_2__ f_path; } ;
typedef  int /*<<< orphan*/  filldir_t ;
struct TYPE_6__ {scalar_t__ ip_blkno; } ;
struct TYPE_4__ {struct inode* d_inode; } ;

/* Variables and functions */
 int ENOENT ; 
 TYPE_3__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct inode*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int) ; 

int FUNC8(struct file * filp, void * dirent, filldir_t filldir)
{
	int error = 0;
	struct inode *inode = filp->f_path.dentry->d_inode;
	int lock_level = 0;

	FUNC1("dirino=%llu\n",
		   (unsigned long long)FUNC0(inode)->ip_blkno);

	error = FUNC6(inode, filp->f_vfsmnt, &lock_level);
	if (lock_level && error >= 0) {
		/* We release EX lock which used to update atime
		 * and get PR lock again to reduce contention
		 * on commonly accessed directories. */
		FUNC7(inode, 1);
		lock_level = 0;
		error = FUNC5(inode, NULL, 0);
	}
	if (error < 0) {
		if (error != -ENOENT)
			FUNC2(error);
		/* we haven't got any yet, so propagate the error. */
		goto bail_nolock;
	}

	error = FUNC4(inode, &filp->f_version, &filp->f_pos,
				      dirent, filldir, NULL);

	FUNC7(inode, lock_level);

bail_nolock:
	FUNC3(error);

	return error;
}