#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  mnt; } ;
struct file {TYPE_2__ f_path; struct btrfs_trans_handle* private_data; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct TYPE_8__ {struct btrfs_root* root; } ;
struct TYPE_7__ {struct inode* d_inode; } ;
struct TYPE_5__ {int /*<<< orphan*/  open_ioctl_trans; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EINPROGRESS ; 
 int ENOMEM ; 
 int EPERM ; 
 int EROFS ; 
 scalar_t__ FUNC1 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct btrfs_root*) ; 
 struct btrfs_trans_handle* FUNC5 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC7 (struct file*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static long FUNC10(struct file *file)
{
	struct inode *inode = FUNC7(file)->d_inode;
	struct btrfs_root *root = FUNC0(inode)->root;
	struct btrfs_trans_handle *trans;
	int ret;

	ret = -EPERM;
	if (!FUNC6(CAP_SYS_ADMIN))
		goto out;

	ret = -EINPROGRESS;
	if (file->private_data)
		goto out;

	ret = -EROFS;
	if (FUNC4(root))
		goto out;

	ret = FUNC9(file->f_path.mnt);
	if (ret)
		goto out;

	FUNC3(&root->fs_info->open_ioctl_trans);

	ret = -ENOMEM;
	trans = FUNC5(root);
	if (FUNC1(trans))
		goto out_drop;

	file->private_data = trans;
	return 0;

out_drop:
	FUNC2(&root->fs_info->open_ioctl_trans);
	FUNC8(file->f_path.mnt);
out:
	return ret;
}