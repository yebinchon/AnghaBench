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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {char const* name; int /*<<< orphan*/  len; int /*<<< orphan*/  hash; } ;
struct dentry {TYPE_1__ d_name; } ;
struct autofs_symlink {int len; int /*<<< orphan*/  mtime; struct autofs_dir_ent* data; } ;
struct autofs_dirhash {int dummy; } ;
struct autofs_sb_info {int /*<<< orphan*/  symlink_bitmap; struct autofs_symlink* symlink; struct autofs_dirhash dirhash; } ;
struct autofs_dir_ent {scalar_t__ ino; int /*<<< orphan*/ * dentry; int /*<<< orphan*/  len; struct autofs_dir_ent* name; int /*<<< orphan*/  hash; } ;

/* Variables and functions */
 scalar_t__ AUTOFS_FIRST_SYMLINK ; 
 unsigned int AUTOFS_MAX_SYMLINKS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EACCES ; 
 int EEXIST ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct autofs_dirhash*,struct autofs_dir_ent*) ; 
 scalar_t__ FUNC4 (struct autofs_dirhash*,TYPE_1__*) ; 
 struct inode* FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct autofs_sb_info*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ ) ; 
 struct autofs_sb_info* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct dentry*,struct inode*) ; 
 unsigned int FUNC11 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct autofs_dir_ent*) ; 
 void* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (struct autofs_dir_ent*,char const*,int) ; 
 int /*<<< orphan*/  FUNC17 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC18 (char const*) ; 
 int /*<<< orphan*/  FUNC19 () ; 

__attribute__((used)) static int FUNC20(struct inode *dir, struct dentry *dentry, const char *symname)
{
	struct autofs_sb_info *sbi = FUNC8(dir->i_sb);
	struct autofs_dirhash *dh = &sbi->dirhash;
	struct autofs_dir_ent *ent;
	unsigned int n;
	int slsize;
	struct autofs_symlink *sl;
	struct inode *inode;

	FUNC0(("autofs_root_symlink: %s <- ", symname));
	FUNC7(dentry->d_name.name,dentry->d_name.len);

	FUNC15();
	if (!FUNC6(sbi)) {
		FUNC19();
		return -EACCES;
	}

	if (FUNC4(dh, &dentry->d_name)) {
		FUNC19();
		return -EEXIST;
	}

	n = FUNC11(sbi->symlink_bitmap,AUTOFS_MAX_SYMLINKS);
	if (n >= AUTOFS_MAX_SYMLINKS) {
		FUNC19();
		return -ENOSPC;
	}

	FUNC17(n,sbi->symlink_bitmap);
	sl = &sbi->symlink[n];
	sl->len = FUNC18(symname);
	sl->data = FUNC14(slsize = sl->len+1, GFP_KERNEL);
	if (!sl->data) {
		FUNC9(n,sbi->symlink_bitmap);
		FUNC19();
		return -ENOSPC;
	}

	ent = FUNC14(sizeof(struct autofs_dir_ent), GFP_KERNEL);
	if (!ent) {
		FUNC13(sl->data);
		FUNC9(n,sbi->symlink_bitmap);
		FUNC19();
		return -ENOSPC;
	}

	ent->name = FUNC14(dentry->d_name.len+1, GFP_KERNEL);
	if (!ent->name) {
		FUNC13(sl->data);
		FUNC13(ent);
		FUNC9(n,sbi->symlink_bitmap);
		FUNC19();
		return -ENOSPC;
	}

	FUNC16(sl->data,symname,slsize);
	sl->mtime = FUNC12();

	ent->ino = AUTOFS_FIRST_SYMLINK + n;
	ent->hash = dentry->d_name.hash;
	FUNC16(ent->name, dentry->d_name.name, 1+(ent->len = dentry->d_name.len));
	ent->dentry = NULL;	/* We don't keep the dentry for symlinks */

	FUNC3(dh,ent);

	inode = FUNC5(dir->i_sb, ent->ino);
	if (FUNC1(inode))
		return FUNC2(inode);

	FUNC10(dentry, inode);
	FUNC19();
	return 0;
}