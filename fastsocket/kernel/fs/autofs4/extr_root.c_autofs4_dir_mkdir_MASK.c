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
struct TYPE_2__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dentry {struct dentry* d_parent; struct autofs_info* d_fsdata; TYPE_1__ d_name; } ;
struct autofs_sb_info {int version; } ;
struct autofs_info {int /*<<< orphan*/  count; int /*<<< orphan*/  dentry; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME ; 
 int /*<<< orphan*/  FUNC0 (char*,struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EACCES ; 
 int ENOMEM ; 
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 struct autofs_info* FUNC3 (struct dentry*) ; 
 struct inode* FUNC4 (int /*<<< orphan*/ ,struct autofs_info*) ; 
 struct autofs_info* FUNC5 (struct autofs_info*,struct autofs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct autofs_sb_info*) ; 
 struct autofs_sb_info* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct autofs_info*) ; 

__attribute__((used)) static int FUNC13(struct inode *dir, struct dentry *dentry, int mode)
{
	struct autofs_sb_info *sbi = FUNC7(dir->i_sb);
	struct autofs_info *ino = FUNC3(dentry);
	struct autofs_info *p_ino;
	struct inode *inode;

	if (!FUNC6(sbi))
		return -EACCES;

	FUNC0("dentry %p, creating %.*s",
		dentry, dentry->d_name.len, dentry->d_name.name);

	ino = FUNC5(ino, sbi, S_IFDIR | 0555);
	if (!ino)
		return -ENOMEM;

	FUNC2(dentry);

	inode = FUNC4(dir->i_sb, ino);
	if (!inode) {
		if (!dentry->d_fsdata)
			FUNC12(ino);
		return -ENOMEM;
	}
	FUNC9(dentry, inode);

	if (sbi->version < 5)
		FUNC8(dentry);

	dentry->d_fsdata = ino;
	ino->dentry = FUNC10(dentry);
	FUNC1(&ino->count);
	p_ino = FUNC3(dentry->d_parent);
	if (p_ino && dentry->d_parent != dentry)
		FUNC1(&p_ino->count);
	FUNC11(dir);
	dir->i_mtime = CURRENT_TIME;

	return 0;
}