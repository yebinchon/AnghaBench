#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct path {TYPE_1__* mnt; TYPE_2__* dentry; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;
struct block_device {int dummy; } ;
struct TYPE_4__ {struct inode* d_inode; } ;
struct TYPE_3__ {int mnt_flags; } ;

/* Variables and functions */
 int EACCES ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENOTBLK ; 
 struct block_device* FUNC0 (int) ; 
 int /*<<< orphan*/  LOOKUP_FOLLOW ; 
 int MNT_NODEV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct block_device* FUNC2 (struct inode*) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ,struct path*) ; 
 int /*<<< orphan*/  FUNC4 (struct path*) ; 

struct block_device *FUNC5(const char *pathname)
{
	struct block_device *bdev;
	struct inode *inode;
	struct path path;
	int error;

	if (!pathname || !*pathname)
		return FUNC0(-EINVAL);

	error = FUNC3(pathname, LOOKUP_FOLLOW, &path);
	if (error)
		return FUNC0(error);

	inode = path.dentry->d_inode;
	error = -ENOTBLK;
	if (!FUNC1(inode->i_mode))
		goto fail;
	error = -EACCES;
	if (path.mnt->mnt_flags & MNT_NODEV)
		goto fail;
	error = -ENOMEM;
	bdev = FUNC2(inode);
	if (!bdev)
		goto fail;
out:
	FUNC4(&path);
	return bdev;
fail:
	bdev = FUNC0(error);
	goto out;
}