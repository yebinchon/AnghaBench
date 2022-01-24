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
struct inode {scalar_t__ i_ino; void* i_ctime; void* i_mtime; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; struct inode* d_inode; } ;
struct buffer_head {int dummy; } ;
struct bfs_sb_info {int /*<<< orphan*/  bfs_lock; } ;
struct bfs_dirent {scalar_t__ ino; } ;

/* Variables and functions */
 struct bfs_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 void* CURRENT_TIME_SEC ; 
 int EINVAL ; 
 int ENOENT ; 
 int EPERM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct buffer_head* FUNC3 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bfs_dirent**) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct inode *old_dir, struct dentry *old_dentry,
			struct inode *new_dir, struct dentry *new_dentry)
{
	struct inode *old_inode, *new_inode;
	struct buffer_head *old_bh, *new_bh;
	struct bfs_dirent *old_de, *new_de;
	struct bfs_sb_info *info;
	int error = -ENOENT;

	old_bh = new_bh = NULL;
	old_inode = old_dentry->d_inode;
	if (FUNC1(old_inode->i_mode))
		return -EINVAL;

	info = FUNC0(old_inode->i_sb);

	FUNC9(&info->bfs_lock);
	old_bh = FUNC3(old_dir, 
				old_dentry->d_name.name, 
				old_dentry->d_name.len, &old_de);

	if (!old_bh || (FUNC6(old_de->ino) != old_inode->i_ino))
		goto end_rename;

	error = -EPERM;
	new_inode = new_dentry->d_inode;
	new_bh = FUNC3(new_dir, 
				new_dentry->d_name.name, 
				new_dentry->d_name.len, &new_de);

	if (new_bh && !new_inode) {
		FUNC4(new_bh);
		new_bh = NULL;
	}
	if (!new_bh) {
		error = FUNC2(new_dir, 
					new_dentry->d_name.name,
					new_dentry->d_name.len,
					old_inode->i_ino);
		if (error)
			goto end_rename;
	}
	old_de->ino = 0;
	old_dir->i_ctime = old_dir->i_mtime = CURRENT_TIME_SEC;
	FUNC8(old_dir);
	if (new_inode) {
		new_inode->i_ctime = CURRENT_TIME_SEC;
		FUNC5(new_inode);
	}
	FUNC7(old_bh, old_dir);
	error = 0;

end_rename:
	FUNC10(&info->bfs_lock);
	FUNC4(old_bh);
	FUNC4(new_bh);
	return error;
}