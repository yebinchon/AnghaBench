#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mode; } ;
struct TYPE_6__ {int /*<<< orphan*/  fdCreator; int /*<<< orphan*/  fdType; } ;
struct hfsplus_cat_file {TYPE_1__ user_info; } ;
struct hfs_find_data {int /*<<< orphan*/  entryoffset; int /*<<< orphan*/  bnode; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_7__ {struct hfsplus_cat_file file; } ;
typedef  TYPE_2__ hfsplus_cat_entry ;
struct TYPE_8__ {int /*<<< orphan*/  cat_tree; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int ERANGE ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 TYPE_5__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hfs_find_data*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct hfs_find_data*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hfs_find_data*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,void const*,int) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*) ; 

int FUNC10(struct dentry *dentry, const char *name,
		     const void *value, size_t size, int flags)
{
	struct inode *inode = dentry->d_inode;
	struct hfs_find_data fd;
	hfsplus_cat_entry entry;
	struct hfsplus_cat_file *file;
	int res;

	if (!FUNC2(inode->i_mode) || FUNC0(inode))
		return -EOPNOTSUPP;

	res = FUNC6(FUNC1(inode->i_sb).cat_tree, &fd);
	if (res)
		return res;
	res = FUNC7(inode->i_sb, inode->i_ino, &fd);
	if (res)
		goto out;
	FUNC3(fd.bnode, &entry, fd.entryoffset,
			sizeof(struct hfsplus_cat_file));
	file = &entry.file;

	if (!FUNC9(name, "hfs.type")) {
		if (size == 4)
			FUNC8(&file->user_info.fdType, value, 4);
		else
			res = -ERANGE;
	} else if (!FUNC9(name, "hfs.creator")) {
		if (size == 4)
			FUNC8(&file->user_info.fdCreator, value, 4);
		else
			res = -ERANGE;
	} else
		res = -EOPNOTSUPP;
	if (!res)
		FUNC4(fd.bnode, &entry, fd.entryoffset,
				sizeof(struct hfsplus_cat_file));
out:
	FUNC5(&fd);
	return res;
}