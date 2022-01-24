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
struct path {int /*<<< orphan*/  mnt; TYPE_1__* dentry; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {struct inode* d_inode; } ;

/* Variables and functions */
 long EINVAL ; 
 long EISDIR ; 
 long EPERM ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  MAY_WRITE ; 
 int /*<<< orphan*/  O_WRONLY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 long FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 long FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 long FUNC5 (struct inode*) ; 
 long FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 
 long FUNC7 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 long FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 long FUNC11 (struct path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 

long FUNC13(struct path *path, loff_t length)
{
	struct inode *inode;
	long error;

	inode = path->dentry->d_inode;

	/* For directories it's -EISDIR, for other non-regulars - -EINVAL */
	if (FUNC1(inode->i_mode))
		return -EISDIR;
	if (!FUNC2(inode->i_mode))
		return -EINVAL;

	error = FUNC9(path->mnt);
	if (error)
		goto out;

	error = FUNC6(inode, MAY_WRITE);
	if (error)
		goto mnt_drop_write_and_out;

	error = -EPERM;
	if (FUNC0(inode))
		goto mnt_drop_write_and_out;

	error = FUNC5(inode);
	if (error)
		goto mnt_drop_write_and_out;

	/*
	 * Make sure that there are no leases.  get_write_access() protects
	 * against the truncate racing with a lease-granting setlease().
	 */
	error = FUNC3(inode, O_WRONLY);
	if (error)
		goto put_write_and_out;

	error = FUNC7(inode, NULL, length);
	if (!error)
		error = FUNC11(path, length, 0);
	if (!error) {
		FUNC12(inode);
		error = FUNC4(path->dentry, length, 0, NULL);
	}

put_write_and_out:
	FUNC10(inode);
mnt_drop_write_and_out:
	FUNC8(path->mnt);
out:
	return error;
}