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
struct TYPE_2__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; int /*<<< orphan*/  hash; } ;
struct dentry {TYPE_1__ d_name; } ;
struct autofs_dirhash {int dummy; } ;
struct autofs_sb_info {scalar_t__ next_dir_ino; struct autofs_dirhash dirhash; } ;
struct autofs_dir_ent {struct dentry* dentry; scalar_t__ ino; int /*<<< orphan*/  len; void* name; int /*<<< orphan*/  hash; } ;
typedef  scalar_t__ ino_t ;

/* Variables and functions */
 scalar_t__ AUTOFS_FIRST_DIR_INO ; 
 int EACCES ; 
 int EEXIST ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct autofs_dirhash*,struct autofs_dir_ent*) ; 
 struct autofs_dir_ent* FUNC3 (struct autofs_dirhash*,TYPE_1__*) ; 
 struct inode* FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct autofs_sb_info*) ; 
 struct autofs_sb_info* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct autofs_dir_ent*) ; 
 void* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 () ; 

__attribute__((used)) static int FUNC16(struct inode *dir, struct dentry *dentry, int mode)
{
	struct autofs_sb_info *sbi = FUNC6(dir->i_sb);
	struct autofs_dirhash *dh = &sbi->dirhash;
	struct autofs_dir_ent *ent;
	struct inode *inode;
	ino_t ino;

	FUNC12();
	if (!FUNC5(sbi)) {
		FUNC15();
		return -EACCES;
	}

	ent = FUNC3(dh, &dentry->d_name);
	if (ent) {
		FUNC15();
		return -EEXIST;
	}

	if (sbi->next_dir_ino < AUTOFS_FIRST_DIR_INO) {
		FUNC14("autofs: Out of inode numbers -- what the heck did you do??\n");
		FUNC15();
		return -ENOSPC;
	}
	ino = sbi->next_dir_ino++;

	ent = FUNC11(sizeof(struct autofs_dir_ent), GFP_KERNEL);
	if (!ent) {
		FUNC15();
		return -ENOSPC;
	}

	ent->name = FUNC11(dentry->d_name.len+1, GFP_KERNEL);
	if (!ent->name) {
		FUNC10(ent);
		FUNC15();
		return -ENOSPC;
	}

	ent->hash = dentry->d_name.hash;
	FUNC13(ent->name, dentry->d_name.name, 1+(ent->len = dentry->d_name.len));
	ent->ino = ino;
	ent->dentry = dentry;
	FUNC2(dh,ent);

	FUNC9(dir);

	inode = FUNC4(dir->i_sb, ino);
	if (FUNC0(inode)) {
		FUNC8(dir);
		return FUNC1(inode);
	}

	FUNC7(dentry, inode);
	FUNC15();

	return 0;
}