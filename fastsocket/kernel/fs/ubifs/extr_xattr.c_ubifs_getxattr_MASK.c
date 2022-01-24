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
struct ubifs_inode {size_t data_len; size_t xattr_size; int /*<<< orphan*/  data; } ;
struct ubifs_info {int dummy; } ;
struct ubifs_dent_node {int /*<<< orphan*/  inum; } ;
struct qstr {char const* name; int /*<<< orphan*/  len; } ;
struct inode {size_t i_size; int /*<<< orphan*/  i_ino; TYPE_1__* i_sb; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dentry {TYPE_2__ d_name; struct inode* d_inode; } ;
typedef  int ssize_t ;
struct TYPE_3__ {struct ubifs_info* s_fs_info; } ;

/* Variables and functions */
 int ENODATA ; 
 int ENOENT ; 
 int ENOMEM ; 
 int ERANGE ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  UBIFS_MAX_XENT_NODE_SZ ; 
 int FUNC2 (struct qstr*) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 struct inode* FUNC5 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct ubifs_dent_node*) ; 
 struct ubifs_dent_node* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 struct ubifs_inode* FUNC13 (struct inode*) ; 
 int FUNC14 (struct ubifs_info*,union ubifs_key*,struct ubifs_dent_node*,struct qstr*) ; 
 int /*<<< orphan*/  FUNC15 (struct ubifs_info*,union ubifs_key*,int /*<<< orphan*/ ,struct qstr*) ; 

ssize_t FUNC16(struct dentry *dentry, const char *name, void *buf,
		       size_t size)
{
	struct inode *inode, *host = dentry->d_inode;
	struct ubifs_info *c = host->i_sb->s_fs_info;
	struct qstr nm = { .name = name, .len = FUNC11(name) };
	struct ubifs_inode *ui;
	struct ubifs_dent_node *xent;
	union ubifs_key key;
	int err;

	FUNC4("xattr '%s', ino %lu ('%.*s'), buf size %zd", name,
		host->i_ino, dentry->d_name.len, dentry->d_name.name, size);

	err = FUNC2(&nm);
	if (err < 0)
		return err;

	xent = FUNC8(UBIFS_MAX_XENT_NODE_SZ, GFP_NOFS);
	if (!xent)
		return -ENOMEM;

	FUNC15(c, &key, host->i_ino, &nm);
	err = FUNC14(c, &key, xent, &nm);
	if (err) {
		if (err == -ENOENT)
			err = -ENODATA;
		goto out_unlock;
	}

	inode = FUNC5(c, FUNC9(xent->inum));
	if (FUNC0(inode)) {
		err = FUNC1(inode);
		goto out_unlock;
	}

	ui = FUNC13(inode);
	FUNC12(inode->i_size == ui->data_len);
	FUNC12(FUNC13(host)->xattr_size > ui->data_len);

	if (buf) {
		/* If @buf is %NULL we are supposed to return the length */
		if (ui->data_len > size) {
			FUNC3("buffer size %zd, xattr len %d",
				size, ui->data_len);
			err = -ERANGE;
			goto out_iput;
		}

		FUNC10(buf, ui->data, ui->data_len);
	}
	err = ui->data_len;

out_iput:
	FUNC6(inode);
out_unlock:
	FUNC7(xent);
	return err;
}