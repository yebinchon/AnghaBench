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
struct dentry {unsigned long d_time; int /*<<< orphan*/  d_name; } ;
struct autofs_dirhash {int dummy; } ;
struct autofs_sb_info {TYPE_1__* symlink; int /*<<< orphan*/  symlink_bitmap; struct autofs_dirhash dirhash; } ;
struct autofs_dir_ent {unsigned int ino; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 unsigned int AUTOFS_FIRST_SYMLINK ; 
 unsigned int AUTOFS_MAX_SYMLINKS ; 
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EACCES ; 
 int EINVAL ; 
 int EISDIR ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct autofs_dir_ent*) ; 
 struct autofs_dir_ent* FUNC1 (struct autofs_dirhash*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct autofs_sb_info*) ; 
 struct autofs_sb_info* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int FUNC11(struct inode *dir, struct dentry *dentry)
{
	struct autofs_sb_info *sbi = FUNC3(dir->i_sb);
	struct autofs_dirhash *dh = &sbi->dirhash;
	struct autofs_dir_ent *ent;
	unsigned int n;

	/* This allows root to remove symlinks */
	FUNC8();
	if (!FUNC2(sbi) && !FUNC4(CAP_SYS_ADMIN)) {
		FUNC10();
		return -EACCES;
	}

	ent = FUNC1(dh, &dentry->d_name);
	if (!ent) {
		FUNC10();
		return -ENOENT;
	}

	n = ent->ino - AUTOFS_FIRST_SYMLINK;
	if (n >= AUTOFS_MAX_SYMLINKS) {
		FUNC10();
		return -EISDIR;	/* It's a directory, dummy */
	}
	if (!FUNC9(n,sbi->symlink_bitmap)) {
		FUNC10();
		return -EINVAL;	/* Nonexistent symlink?  Shouldn't happen */
	}
	
	dentry->d_time = (unsigned long)(struct autofs_dirhash *)NULL;
	FUNC0(ent);
	FUNC5(n,sbi->symlink_bitmap);
	FUNC7(sbi->symlink[n].data);
	FUNC6(dentry);
	
	FUNC10();
	return 0;
}