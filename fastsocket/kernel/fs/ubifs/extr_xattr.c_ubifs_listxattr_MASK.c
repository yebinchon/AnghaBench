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
struct ubifs_inode {int xattr_names; int xattr_cnt; } ;
struct ubifs_info {int dummy; } ;
struct ubifs_dent_node {int /*<<< orphan*/  key; int /*<<< orphan*/  nlen; int /*<<< orphan*/ * name; } ;
struct qstr {scalar_t__ len; int /*<<< orphan*/ * name; } ;
struct inode {int /*<<< orphan*/  i_ino; TYPE_1__* i_sb; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dentry {TYPE_2__ d_name; struct inode* d_inode; } ;
typedef  int ssize_t ;
struct TYPE_3__ {struct ubifs_info* s_fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int ENOENT ; 
 int ERANGE ; 
 scalar_t__ FUNC0 (struct ubifs_dent_node*) ; 
 int FUNC1 (struct ubifs_dent_node*) ; 
 int TRUSTED_XATTR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct qstr*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_info*,int /*<<< orphan*/ *,union ubifs_key*) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_dent_node*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ubifs_info*,union ubifs_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 struct ubifs_inode* FUNC12 (struct inode*) ; 
 struct ubifs_dent_node* FUNC13 (struct ubifs_info*,union ubifs_key*,struct qstr*) ; 
 scalar_t__ FUNC14 (int) ; 

ssize_t FUNC15(struct dentry *dentry, char *buffer, size_t size)
{
	union ubifs_key key;
	struct inode *host = dentry->d_inode;
	struct ubifs_info *c = host->i_sb->s_fs_info;
	struct ubifs_inode *host_ui = FUNC12(host);
	struct ubifs_dent_node *xent, *pxent = NULL;
	int err, len, written = 0;
	struct qstr nm = { .name = NULL };

	FUNC4("ino %lu ('%.*s'), buffer size %zd", host->i_ino,
		dentry->d_name.len, dentry->d_name.name, size);

	len = host_ui->xattr_names + host_ui->xattr_cnt;
	if (!buffer)
		/*
		 * We should return the minimum buffer size which will fit a
		 * null-terminated list of all the extended attribute names.
		 */
		return len;

	if (len > size)
		return -ERANGE;

	FUNC8(c, &key, host->i_ino);
	while (1) {
		int type;

		xent = FUNC13(c, &key, &nm);
		if (FUNC0(xent)) {
			err = FUNC1(xent);
			break;
		}

		nm.name = xent->name;
		nm.len = FUNC7(xent->nlen);

		type = FUNC3(&nm);
		if (FUNC14(type < 0)) {
			err = type;
			break;
		}

		/* Show trusted namespace only for "power" users */
		if (type != TRUSTED_XATTR || FUNC2(CAP_SYS_ADMIN)) {
			FUNC9(buffer + written, nm.name, nm.len + 1);
			written += nm.len + 1;
		}

		FUNC6(pxent);
		pxent = xent;
		FUNC5(c, &xent->key, &key);
	}

	FUNC6(pxent);
	if (err != -ENOENT) {
		FUNC11("cannot find next direntry, error %d", err);
		return err;
	}

	FUNC10(written <= size);
	return written;
}