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
struct dentry {int /*<<< orphan*/  d_inode; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct btrfs_trans_handle*,struct btrfs_root*,int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 

int FUNC3(struct btrfs_trans_handle *trans,
			  struct btrfs_root *root, struct dentry *dentry)
{
	struct dentry *parent = FUNC1(dentry);
	int ret;

	ret = FUNC0(trans, root, dentry->d_inode, parent, 0);
	FUNC2(parent);

	return ret;
}