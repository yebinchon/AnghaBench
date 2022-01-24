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
struct inode {scalar_t__ i_ino; int i_nlink; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; TYPE_2__* i_sb; } ;
struct TYPE_3__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; struct inode* d_inode; } ;
struct buffer_head {int dummy; } ;
struct bfs_sb_info {int /*<<< orphan*/  bfs_lock; } ;
struct bfs_dirent {scalar_t__ ino; } ;
struct TYPE_4__ {char* s_id; } ;

/* Variables and functions */
 struct bfs_sb_info* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  CURRENT_TIME_SEC ; 
 int ENOENT ; 
 struct buffer_head* FUNC1 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bfs_dirent**) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*,struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,scalar_t__,int) ; 

__attribute__((used)) static int FUNC10(struct inode *dir, struct dentry *dentry)
{
	int error = -ENOENT;
	struct inode *inode = dentry->d_inode;
	struct buffer_head *bh;
	struct bfs_dirent *de;
	struct bfs_sb_info *info = FUNC0(inode->i_sb);

	FUNC7(&info->bfs_lock);
	bh = FUNC1(dir, dentry->d_name.name, dentry->d_name.len, &de);
	if (!bh || (FUNC4(de->ino) != inode->i_ino))
		goto out_brelse;

	if (!inode->i_nlink) {
		FUNC9("unlinking non-existent file %s:%lu (nlink=%d)\n",
					inode->i_sb->s_id, inode->i_ino,
					inode->i_nlink);
		inode->i_nlink = 1;
	}
	de->ino = 0;
	FUNC5(bh, dir);
	dir->i_ctime = dir->i_mtime = CURRENT_TIME_SEC;
	FUNC6(dir);
	inode->i_ctime = dir->i_ctime;
	FUNC3(inode);
	error = 0;

out_brelse:
	FUNC2(bh);
	FUNC8(&info->bfs_lock);
	return error;
}