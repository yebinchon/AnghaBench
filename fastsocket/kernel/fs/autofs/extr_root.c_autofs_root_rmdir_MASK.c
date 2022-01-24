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
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct dentry {unsigned long d_time; TYPE_1__ d_name; } ;
struct autofs_dirhash {int dummy; } ;
struct autofs_sb_info {struct autofs_dirhash dirhash; } ;
struct autofs_dir_ent {struct dentry* dentry; scalar_t__ ino; } ;

/* Variables and functions */
 unsigned int AUTOFS_FIRST_DIR_INO ; 
 int EACCES ; 
 int ENOENT ; 
 int ENOTDIR ; 
 int /*<<< orphan*/  FUNC0 (struct autofs_dir_ent*) ; 
 struct autofs_dir_ent* FUNC1 (struct autofs_dirhash*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct autofs_sb_info*) ; 
 struct autofs_sb_info* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int FUNC9(struct inode *dir, struct dentry *dentry)
{
	struct autofs_sb_info *sbi = FUNC3(dir->i_sb);
	struct autofs_dirhash *dh = &sbi->dirhash;
	struct autofs_dir_ent *ent;

	FUNC6();
	if (!FUNC2(sbi)) {
		FUNC8();
		return -EACCES;
	}

	ent = FUNC1(dh, &dentry->d_name);
	if (!ent) {
		FUNC8();
		return -ENOENT;
	}

	if ((unsigned int)ent->ino < AUTOFS_FIRST_DIR_INO) {
		FUNC8();
		return -ENOTDIR; /* Not a directory */
	}

	if (ent->dentry != dentry) {
		FUNC7("autofs_rmdir: odentry != dentry for entry %s\n", dentry->d_name.name);
	}

	dentry->d_time = (unsigned long)(struct autofs_dir_ent *)NULL;
	FUNC0(ent);
	FUNC5(dir);
	FUNC4(dentry);
	FUNC8();

	return 0;
}