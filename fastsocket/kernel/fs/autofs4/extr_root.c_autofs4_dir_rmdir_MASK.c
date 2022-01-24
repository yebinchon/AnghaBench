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
struct inode {scalar_t__ i_nlink; int /*<<< orphan*/  i_sb; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dentry {TYPE_2__* d_inode; struct dentry* d_parent; int /*<<< orphan*/  d_lock; TYPE_1__ d_name; } ;
struct autofs_sb_info {int version; } ;
struct autofs_info {int /*<<< orphan*/  dentry; int /*<<< orphan*/  count; } ;
struct TYPE_4__ {scalar_t__ i_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EACCES ; 
 int ENOTEMPTY ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 struct autofs_info* FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct autofs_sb_info*) ; 
 struct autofs_sb_info* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  dcache_lock ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct inode *dir, struct dentry *dentry)
{
	struct autofs_sb_info *sbi = FUNC8(dir->i_sb);
	struct autofs_info *ino = FUNC6(dentry);
	struct autofs_info *p_ino;
	
	FUNC0("dentry %p, removing %.*s",
		dentry, dentry->d_name.len, dentry->d_name.name);

	if (!FUNC7(sbi))
		return -EACCES;

	FUNC13(&dcache_lock);
	if (!FUNC2(dentry)) {
		FUNC14(&dcache_lock);
		return -ENOTEMPTY;
	}
	FUNC5(dentry);
	FUNC13(&dentry->d_lock);
	FUNC1(dentry);
	FUNC14(&dentry->d_lock);
	FUNC14(&dcache_lock);

	if (sbi->version < 5)
		FUNC9(dentry);

	if (FUNC4(&ino->count)) {
		p_ino = FUNC6(dentry->d_parent);
		if (p_ino && dentry->d_parent != dentry)
			FUNC3(&p_ino->count);
	}
	FUNC11(ino->dentry);
	dentry->d_inode->i_size = 0;
	FUNC10(dentry->d_inode);

	if (dir->i_nlink)
		FUNC12(dir);

	return 0;
}