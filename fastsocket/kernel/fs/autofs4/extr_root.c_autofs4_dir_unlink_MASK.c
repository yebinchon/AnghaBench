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
struct inode {int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_sb; } ;
struct dentry {int /*<<< orphan*/  d_lock; TYPE_1__* d_inode; struct dentry* d_parent; } ;
struct autofs_sb_info {int dummy; } ;
struct autofs_info {int /*<<< orphan*/  dentry; int /*<<< orphan*/  count; } ;
struct TYPE_2__ {scalar_t__ i_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  CURRENT_TIME ; 
 int EACCES ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 struct autofs_info* FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct autofs_sb_info*) ; 
 struct autofs_sb_info* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  dcache_lock ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct inode *dir, struct dentry *dentry)
{
	struct autofs_sb_info *sbi = FUNC6(dir->i_sb);
	struct autofs_info *ino = FUNC4(dentry);
	struct autofs_info *p_ino;
	
	/* This allows root to remove symlinks */
	if (!FUNC5(sbi) && !FUNC7(CAP_SYS_ADMIN))
		return -EACCES;

	if (FUNC2(&ino->count)) {
		p_ino = FUNC4(dentry->d_parent);
		if (p_ino && dentry->d_parent != dentry)
			FUNC1(&p_ino->count);
	}
	FUNC9(ino->dentry);

	dentry->d_inode->i_size = 0;
	FUNC8(dentry->d_inode);

	dir->i_mtime = CURRENT_TIME;

	FUNC10(&dcache_lock);
	FUNC3(dentry);
	FUNC10(&dentry->d_lock);
	FUNC0(dentry);
	FUNC11(&dentry->d_lock);
	FUNC11(&dcache_lock);

	return 0;
}