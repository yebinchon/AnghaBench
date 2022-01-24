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
typedef  int /*<<< orphan*/  u32 ;
struct super_block {int dummy; } ;
struct qstr {int /*<<< orphan*/  name; } ;
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_mode; struct super_block* i_sb; int /*<<< orphan*/  i_nlink; } ;
struct hfs_find_data {int /*<<< orphan*/  search_key; } ;
typedef  int /*<<< orphan*/  hfsplus_cat_entry ;
struct TYPE_2__ {int /*<<< orphan*/  cat_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME_SEC ; 
 int /*<<< orphan*/  DBG_CAT_MOD ; 
 int EEXIST ; 
 int ENOENT ; 
 int /*<<< orphan*/  HFSPLUS_FILE_THREAD ; 
 int /*<<< orphan*/  HFSPLUS_FOLDER_THREAD ; 
 TYPE_1__ FUNC0 (struct super_block*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct hfs_find_data*) ; 
 int FUNC4 (struct hfs_find_data*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hfs_find_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct hfs_find_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct hfs_find_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct qstr*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct inode*) ; 
 int FUNC10 (struct super_block*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct qstr*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 

int FUNC12(u32 cnid, struct inode *dir, struct qstr *str, struct inode *inode)
{
	struct hfs_find_data fd;
	struct super_block *sb;
	hfsplus_cat_entry entry;
	int entry_size;
	int err;

	FUNC2(DBG_CAT_MOD, "create_cat: %s,%u(%d)\n", str->name, cnid, inode->i_nlink);
	sb = dir->i_sb;
	FUNC7(FUNC0(sb).cat_tree, &fd);

	FUNC8(sb, fd.search_key, cnid, NULL);
	entry_size = FUNC10(sb, &entry, FUNC1(inode->i_mode) ?
			HFSPLUS_FOLDER_THREAD : HFSPLUS_FILE_THREAD,
			dir->i_ino, str);
	err = FUNC3(&fd);
	if (err != -ENOENT) {
		if (!err)
			err = -EEXIST;
		goto err2;
	}
	err = FUNC4(&fd, &entry, entry_size);
	if (err)
		goto err2;

	FUNC8(sb, fd.search_key, dir->i_ino, str);
	entry_size = FUNC9(&entry, cnid, inode);
	err = FUNC3(&fd);
	if (err != -ENOENT) {
		/* panic? */
		if (!err)
			err = -EEXIST;
		goto err1;
	}
	err = FUNC4(&fd, &entry, entry_size);
	if (err)
		goto err1;

	dir->i_size++;
	dir->i_mtime = dir->i_ctime = CURRENT_TIME_SEC;
	FUNC11(dir);
	FUNC6(&fd);
	return 0;

err1:
	FUNC8(sb, fd.search_key, cnid, NULL);
	if (!FUNC3(&fd))
		FUNC5(&fd);
err2:
	FUNC6(&fd);
	return err;
}