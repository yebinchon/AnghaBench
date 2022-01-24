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
struct TYPE_3__ {int Flags; } ;
union hfs_cat_rec {int type; TYPE_1__ file; } ;
typedef  int /*<<< orphan*/  u32 ;
struct super_block {int dummy; } ;
struct qstr {int /*<<< orphan*/  name; } ;
struct inode {int /*<<< orphan*/  i_ino; void* i_ctime; void* i_mtime; int /*<<< orphan*/  i_size; struct super_block* i_sb; } ;
struct hfs_find_data {int entrylength; int /*<<< orphan*/  bnode; int /*<<< orphan*/  search_key; int /*<<< orphan*/  entryoffset; } ;
typedef  int /*<<< orphan*/  entry ;
struct TYPE_4__ {int /*<<< orphan*/  cat_tree; } ;

/* Variables and functions */
 void* CURRENT_TIME_SEC ; 
 int /*<<< orphan*/  DBG_CAT_MOD ; 
 int EEXIST ; 
 int EIO ; 
 int ENOENT ; 
 int HFS_CDR_FIL ; 
 int /*<<< orphan*/  HFS_CDR_FTH ; 
 int /*<<< orphan*/  HFS_CDR_THD ; 
 int HFS_FIL_THD ; 
 TYPE_2__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,union hfs_cat_rec*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct hfs_find_data*) ; 
 int FUNC5 (struct hfs_find_data*,union hfs_cat_rec*,int) ; 
 int FUNC6 (struct hfs_find_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct qstr*) ; 
 int FUNC8 (struct super_block*,union hfs_cat_rec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct qstr*) ; 
 int /*<<< orphan*/  FUNC9 (struct hfs_find_data*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct hfs_find_data*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 

int FUNC12(u32 cnid, struct inode *src_dir, struct qstr *src_name,
		 struct inode *dst_dir, struct qstr *dst_name)
{
	struct super_block *sb;
	struct hfs_find_data src_fd, dst_fd;
	union hfs_cat_rec entry;
	int entry_size, type;
	int err;

	FUNC1(DBG_CAT_MOD, "rename_cat: %u - %lu,%s - %lu,%s\n", cnid, src_dir->i_ino, src_name->name,
		dst_dir->i_ino, dst_name->name);
	sb = src_dir->i_sb;
	FUNC10(FUNC0(sb)->cat_tree, &src_fd);
	dst_fd = src_fd;

	/* find the old dir entry and read the data */
	FUNC7(sb, src_fd.search_key, src_dir->i_ino, src_name);
	err = FUNC4(&src_fd);
	if (err)
		goto out;
	if (src_fd.entrylength > sizeof(entry) || src_fd.entrylength < 0) {
		err = -EIO;
		goto out;
	}

	FUNC3(src_fd.bnode, &entry, src_fd.entryoffset,
			    src_fd.entrylength);

	/* create new dir entry with the data from the old entry */
	FUNC7(sb, dst_fd.search_key, dst_dir->i_ino, dst_name);
	err = FUNC4(&dst_fd);
	if (err != -ENOENT) {
		if (!err)
			err = -EEXIST;
		goto out;
	}

	err = FUNC5(&dst_fd, &entry, src_fd.entrylength);
	if (err)
		goto out;
	dst_dir->i_size++;
	dst_dir->i_mtime = dst_dir->i_ctime = CURRENT_TIME_SEC;
	FUNC11(dst_dir);

	/* finally remove the old entry */
	FUNC7(sb, src_fd.search_key, src_dir->i_ino, src_name);
	err = FUNC4(&src_fd);
	if (err)
		goto out;
	err = FUNC6(&src_fd);
	if (err)
		goto out;
	src_dir->i_size--;
	src_dir->i_mtime = src_dir->i_ctime = CURRENT_TIME_SEC;
	FUNC11(src_dir);

	type = entry.type;
	if (type == HFS_CDR_FIL && !(entry.file.Flags & HFS_FIL_THD))
		goto out;

	/* remove old thread entry */
	FUNC7(sb, src_fd.search_key, cnid, NULL);
	err = FUNC4(&src_fd);
	if (err)
		goto out;
	err = FUNC6(&src_fd);
	if (err)
		goto out;

	/* create new thread entry */
	FUNC7(sb, dst_fd.search_key, cnid, NULL);
	entry_size = FUNC8(sb, &entry, type == HFS_CDR_FIL ? HFS_CDR_FTH : HFS_CDR_THD,
					dst_dir->i_ino, dst_name);
	err = FUNC4(&dst_fd);
	if (err != -ENOENT) {
		if (!err)
			err = -EEXIST;
		goto out;
	}
	err = FUNC5(&dst_fd, &entry, entry_size);
out:
	FUNC2(dst_fd.bnode);
	FUNC9(&src_fd);
	return err;
}