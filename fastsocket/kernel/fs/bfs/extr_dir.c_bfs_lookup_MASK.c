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
struct nameidata {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {scalar_t__ len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; } ;
struct buffer_head {int dummy; } ;
struct bfs_sb_info {int /*<<< orphan*/  bfs_lock; } ;
struct bfs_dirent {int /*<<< orphan*/  ino; } ;

/* Variables and functions */
 scalar_t__ BFS_NAMELEN ; 
 struct bfs_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENAMETOOLONG ; 
 struct dentry* FUNC1 (struct inode*) ; 
 struct dentry* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 struct buffer_head* FUNC4 (struct inode*,int /*<<< orphan*/ ,scalar_t__,struct bfs_dirent**) ; 
 struct inode* FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*,struct inode*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dentry *FUNC11(struct inode *dir, struct dentry *dentry,
						struct nameidata *nd)
{
	struct inode *inode = NULL;
	struct buffer_head *bh;
	struct bfs_dirent *de;
	struct bfs_sb_info *info = FUNC0(dir->i_sb);

	if (dentry->d_name.len > BFS_NAMELEN)
		return FUNC2(-ENAMETOOLONG);

	FUNC9(&info->bfs_lock);
	bh = FUNC4(dir, dentry->d_name.name, dentry->d_name.len, &de);
	if (bh) {
		unsigned long ino = (unsigned long)FUNC8(de->ino);
		FUNC6(bh);
		inode = FUNC5(dir->i_sb, ino);
		if (FUNC3(inode)) {
			FUNC10(&info->bfs_lock);
			return FUNC1(inode);
		}
	}
	FUNC10(&info->bfs_lock);
	FUNC7(dentry, inode);
	return NULL;
}