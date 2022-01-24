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
struct inode {int i_nlink; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_mutex; TYPE_1__* i_sb; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dentry {TYPE_2__ d_name; struct inode* d_inode; } ;
struct TYPE_3__ {struct ubifs_info* s_fs_info; } ;

/* Variables and functions */
 int ENODATA ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  UBIFS_MAX_XENT_NODE_SZ ; 
 int FUNC2 (struct qstr*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inode* FUNC4 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_dent_node*) ; 
 struct ubifs_dent_node* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct ubifs_info*,struct inode*,struct inode*,struct qstr*) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int FUNC13 (struct ubifs_info*,union ubifs_key*,struct ubifs_dent_node*,struct qstr*) ; 
 int /*<<< orphan*/  FUNC14 (struct ubifs_info*,union ubifs_key*,int /*<<< orphan*/ ,struct qstr*) ; 

int FUNC15(struct dentry *dentry, const char *name)
{
	struct inode *inode, *host = dentry->d_inode;
	struct ubifs_info *c = host->i_sb->s_fs_info;
	struct qstr nm = { .name = name, .len = FUNC11(name) };
	struct ubifs_dent_node *xent;
	union ubifs_key key;
	int err;

	FUNC3("xattr '%s', ino %lu ('%.*s')", name,
		host->i_ino, dentry->d_name.len, dentry->d_name.name);
	FUNC12(FUNC9(&host->i_mutex));

	err = FUNC2(&nm);
	if (err < 0)
		return err;

	xent = FUNC7(UBIFS_MAX_XENT_NODE_SZ, GFP_NOFS);
	if (!xent)
		return -ENOMEM;

	FUNC14(c, &key, host->i_ino, &nm);
	err = FUNC13(c, &key, xent, &nm);
	if (err) {
		if (err == -ENOENT)
			err = -ENODATA;
		goto out_free;
	}

	inode = FUNC4(c, FUNC8(xent->inum));
	if (FUNC0(inode)) {
		err = FUNC1(inode);
		goto out_free;
	}

	FUNC12(inode->i_nlink == 1);
	inode->i_nlink = 0;
	err = FUNC10(c, host, inode, &nm);
	if (err)
		inode->i_nlink = 1;

	/* If @i_nlink is 0, 'iput()' will delete the inode */
	FUNC5(inode);

out_free:
	FUNC6(xent);
	return err;
}