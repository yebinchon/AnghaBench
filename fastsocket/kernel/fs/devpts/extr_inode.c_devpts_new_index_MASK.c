#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct super_block {int dummy; } ;
struct pts_fs_info {int /*<<< orphan*/  allocated_ptys; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 struct pts_fs_info* FUNC0 (struct super_block*) ; 
 int EAGAIN ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  allocated_ptys_lock ; 
 int FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct super_block* FUNC6 (struct inode*) ; 
 int pty_limit ; 

int FUNC7(struct inode *ptmx_inode)
{
	struct super_block *sb = FUNC6(ptmx_inode);
	struct pts_fs_info *fsi = FUNC0(sb);
	int index;
	int ida_ret;

retry:
	if (!FUNC2(&fsi->allocated_ptys, GFP_KERNEL))
		return -ENOMEM;

	FUNC4(&allocated_ptys_lock);
	ida_ret = FUNC1(&fsi->allocated_ptys, &index);
	if (ida_ret < 0) {
		FUNC5(&allocated_ptys_lock);
		if (ida_ret == -EAGAIN)
			goto retry;
		return -EIO;
	}

	if (index >= pty_limit) {
		FUNC3(&fsi->allocated_ptys, index);
		FUNC5(&allocated_ptys_lock);
		return -EIO;
	}
	FUNC5(&allocated_ptys_lock);
	return index;
}