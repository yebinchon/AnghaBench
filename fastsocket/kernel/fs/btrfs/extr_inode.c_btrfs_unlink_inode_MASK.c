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
struct inode {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*,struct inode*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int FUNC2 (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*) ; 

int FUNC3(struct btrfs_trans_handle *trans,
		       struct btrfs_root *root,
		       struct inode *dir, struct inode *inode,
		       const char *name, int name_len)
{
	int ret;
	ret = FUNC0(trans, root, dir, inode, name, name_len);
	if (!ret) {
		FUNC1(inode);
		ret = FUNC2(trans, root, inode);
	}
	return ret;
}