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
typedef  union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_info {int dummy; } ;
struct ubifs_dent_node {int /*<<< orphan*/  inum; } ;
struct qstr {char const* name; int /*<<< orphan*/  len; } ;
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_mutex; TYPE_1__* i_sb; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dentry {TYPE_2__ d_name; struct inode* d_inode; } ;
struct TYPE_3__ {struct ubifs_info* s_fs_info; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENODATA ; 
 int ENOENT ; 
 int ENOMEM ; 
 int ERANGE ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 size_t UBIFS_MAX_INO_DATA ; 
 int /*<<< orphan*/  UBIFS_MAX_XENT_NODE_SZ ; 
 int XATTR_CREATE ; 
 int XATTR_REPLACE ; 
 int FUNC2 (struct ubifs_info*,struct inode*,struct inode*,void const*,size_t) ; 
 int FUNC3 (struct qstr*) ; 
 int FUNC4 (struct ubifs_info*,struct inode*,struct qstr*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 struct inode* FUNC6 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct ubifs_dent_node*) ; 
 struct ubifs_dent_node* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (struct ubifs_info*,union ubifs_key*,struct ubifs_dent_node*,struct qstr*) ; 
 int /*<<< orphan*/  FUNC15 (struct ubifs_info*,union ubifs_key*,int /*<<< orphan*/ ,struct qstr*) ; 

int FUNC16(struct dentry *dentry, const char *name,
		   const void *value, size_t size, int flags)
{
	struct inode *inode, *host = dentry->d_inode;
	struct ubifs_info *c = host->i_sb->s_fs_info;
	struct qstr nm = { .name = name, .len = FUNC12(name) };
	struct ubifs_dent_node *xent;
	union ubifs_key key;
	int err, type;

	FUNC5("xattr '%s', host ino %lu ('%.*s'), size %zd", name,
		host->i_ino, dentry->d_name.len, dentry->d_name.name, size);
	FUNC13(FUNC11(&host->i_mutex));

	if (size > UBIFS_MAX_INO_DATA)
		return -ERANGE;

	type = FUNC3(&nm);
	if (type < 0)
		return type;

	xent = FUNC9(UBIFS_MAX_XENT_NODE_SZ, GFP_NOFS);
	if (!xent)
		return -ENOMEM;

	/*
	 * The extended attribute entries are stored in LNC, so multiple
	 * look-ups do not involve reading the flash.
	 */
	FUNC15(c, &key, host->i_ino, &nm);
	err = FUNC14(c, &key, xent, &nm);
	if (err) {
		if (err != -ENOENT)
			goto out_free;

		if (flags & XATTR_REPLACE)
			/* We are asked not to create the xattr */
			err = -ENODATA;
		else
			err = FUNC4(c, host, &nm, value, size);
		goto out_free;
	}

	if (flags & XATTR_CREATE) {
		/* We are asked not to replace the xattr */
		err = -EEXIST;
		goto out_free;
	}

	inode = FUNC6(c, FUNC10(xent->inum));
	if (FUNC0(inode)) {
		err = FUNC1(inode);
		goto out_free;
	}

	err = FUNC2(c, host, inode, value, size);
	FUNC7(inode);

out_free:
	FUNC8(xent);
	return err;
}