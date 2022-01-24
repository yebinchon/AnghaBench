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
struct reiserfs_transaction_handle {int dummy; } ;
struct reiserfs_dir_entry {scalar_t__ de_objectid; scalar_t__ de_entrylen; int /*<<< orphan*/  de_entry_key; int /*<<< orphan*/ * de_gen_number_bit_string; } ;
struct inode {scalar_t__ i_ino; int i_nlink; int /*<<< orphan*/  i_sb; void* i_mtime; void* i_ctime; int /*<<< orphan*/  i_size; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; struct inode* d_inode; } ;

/* Variables and functions */
 void* CURRENT_TIME_SEC ; 
 scalar_t__ DEH_SIZE ; 
 int EIO ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int IO_ERROR ; 
 int JOURNAL_PER_BALANCE_CNT ; 
 int NAME_NOT_FOUND ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct reiserfs_transaction_handle*,struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int FUNC5 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  path ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct reiserfs_dir_entry*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct reiserfs_transaction_handle*,struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct inode *dir, struct dentry *dentry)
{
	int retval, err;
	struct inode *inode;
	struct reiserfs_dir_entry de;
	FUNC0(path);
	struct reiserfs_transaction_handle th;
	int jbegin_count;
	unsigned long savelink;

	inode = dentry->d_inode;

	/* in this transaction we can be doing at max two balancings and update
	 * two stat datas, we change quotas of the owner of the directory and of
	 * the owner of the parent directory. The quota structure is possibly
	 * deleted only on iput => outside of this transaction */
	jbegin_count =
	    JOURNAL_PER_BALANCE_CNT * 2 + 2 +
	    4 * FUNC1(dir->i_sb);

	FUNC14(dir->i_sb);
	retval = FUNC5(&th, dir->i_sb, jbegin_count);
	if (retval)
		goto out_unlink;

	de.de_gen_number_bit_string = NULL;
	if ((retval =
	     FUNC10(dir, dentry->d_name.name, dentry->d_name.len,
				 &path, &de)) == NAME_NOT_FOUND) {
		retval = -ENOENT;
		goto end_unlink;
	} else if (retval == IO_ERROR) {
		retval = -EIO;
		goto end_unlink;
	}

	FUNC11(inode);
	FUNC11(dir);

	if (de.de_objectid != inode->i_ino) {
		// FIXME: compare key of an object and a key found in the
		// entry
		retval = -EIO;
		goto end_unlink;
	}

	if (!inode->i_nlink) {
		FUNC13(inode->i_sb, "reiserfs-7042",
				 "deleting nonexistent file (%lu), %d",
				 inode->i_ino, inode->i_nlink);
		inode->i_nlink = 1;
	}

	FUNC3(inode);

	/*
	 * we schedule before doing the add_save_link call, save the link
	 * count so we don't race
	 */
	savelink = inode->i_nlink;

	retval =
	    FUNC9(&th, &path, &(de.de_entry_key), dir, NULL,
				   0);
	if (retval < 0) {
		FUNC4(inode);
		goto end_unlink;
	}
	inode->i_ctime = CURRENT_TIME_SEC;
	FUNC12(&th, inode);

	dir->i_size -= (de.de_entrylen + DEH_SIZE);
	dir->i_ctime = dir->i_mtime = CURRENT_TIME_SEC;
	FUNC12(&th, dir);

	if (!savelink)
		/* prevent file from getting lost */
		FUNC2(&th, inode, 0 /* not truncate */ );

	retval = FUNC6(&th, dir->i_sb, jbegin_count);
	FUNC8(&path);
	FUNC15(dir->i_sb);
	return retval;

      end_unlink:
	FUNC7(&path);
	err = FUNC6(&th, dir->i_sb, jbegin_count);
	FUNC8(&path);
	if (err)
		retval = err;
      out_unlink:
	FUNC15(dir->i_sb);
	return retval;
}