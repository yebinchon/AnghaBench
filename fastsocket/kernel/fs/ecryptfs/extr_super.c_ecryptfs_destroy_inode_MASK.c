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
struct ecryptfs_inode_info {int /*<<< orphan*/  crypt_stat; TYPE_1__* lower_file; } ;
struct dentry {scalar_t__ d_inode; } ;
struct TYPE_2__ {struct dentry* f_dentry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ecryptfs_inode_info_cache ; 
 struct ecryptfs_inode_info* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ecryptfs_inode_info*) ; 

__attribute__((used)) static void FUNC5(struct inode *inode)
{
	struct ecryptfs_inode_info *inode_info;

	inode_info = FUNC2(inode);
	if (inode_info->lower_file) {
		struct dentry *lower_dentry =
			inode_info->lower_file->f_dentry;

		FUNC0(!lower_dentry);
		if (lower_dentry->d_inode) {
			FUNC3(inode_info->lower_file);
			inode_info->lower_file = NULL;
		}
	}
	FUNC1(&inode_info->crypt_stat);
	FUNC4(ecryptfs_inode_info_cache, inode_info);
}