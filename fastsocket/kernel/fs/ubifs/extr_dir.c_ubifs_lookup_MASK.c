#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_info {int dummy; } ;
struct ubifs_dent_node {int /*<<< orphan*/  inum; } ;
struct nameidata {int dummy; } ;
struct inode {TYPE_2__* i_sb; int /*<<< orphan*/  i_ino; } ;
struct TYPE_5__ {scalar_t__ len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; } ;
struct TYPE_6__ {struct ubifs_info* s_fs_info; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENAMETOOLONG ; 
 int ENOENT ; 
 int ENOMEM ; 
 struct dentry* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  UBIFS_MAX_DENT_NODE_SZ ; 
 scalar_t__ UBIFS_MAX_NLEN ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,struct inode*) ; 
 scalar_t__ FUNC4 (struct ubifs_dent_node*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_info*,union ubifs_key*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct ubifs_dent_node*) ; 
 struct ubifs_dent_node* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 struct inode* FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ubifs_info*,int) ; 
 int FUNC13 (struct ubifs_info*,union ubifs_key*,struct ubifs_dent_node*,TYPE_1__*) ; 

__attribute__((used)) static struct dentry *FUNC14(struct inode *dir, struct dentry *dentry,
				   struct nameidata *nd)
{
	int err;
	union ubifs_key key;
	struct inode *inode = NULL;
	struct ubifs_dent_node *dent;
	struct ubifs_info *c = dir->i_sb->s_fs_info;

	FUNC5("'%.*s' in dir ino %lu",
		dentry->d_name.len, dentry->d_name.name, dir->i_ino);

	if (dentry->d_name.len > UBIFS_MAX_NLEN)
		return FUNC0(-ENAMETOOLONG);

	dent = FUNC8(UBIFS_MAX_DENT_NODE_SZ, GFP_NOFS);
	if (!dent)
		return FUNC0(-ENOMEM);

	FUNC6(c, &key, dir->i_ino, &dentry->d_name);

	err = FUNC13(c, &key, dent, &dentry->d_name);
	if (err) {
		if (err == -ENOENT) {
			FUNC5("not found");
			goto done;
		}
		goto out;
	}

	if (FUNC4(dent, &dentry->d_name)) {
		err = -EINVAL;
		goto out;
	}

	inode = FUNC11(dir->i_sb, FUNC9(dent->inum));
	if (FUNC1(inode)) {
		/*
		 * This should not happen. Probably the file-system needs
		 * checking.
		 */
		err = FUNC2(inode);
		FUNC10("dead directory entry '%.*s', error %d",
			  dentry->d_name.len, dentry->d_name.name, err);
		FUNC12(c, err);
		goto out;
	}

done:
	FUNC7(dent);
	/*
	 * Note, d_splice_alias() would be required instead if we supported
	 * NFS.
	 */
	FUNC3(dentry, inode);
	return NULL;

out:
	FUNC7(dent);
	return FUNC0(err);
}