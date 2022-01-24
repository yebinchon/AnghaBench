#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ubifs_inode {int flags; int data_len; int xattr_cnt; int xattr_size; int xattr_names; int /*<<< orphan*/  data; int /*<<< orphan*/  compr_type; int /*<<< orphan*/  ui_size; int /*<<< orphan*/  creat_sqnum; } ;
struct TYPE_5__ {int /*<<< orphan*/  node_type; } ;
struct ubifs_ino_node {int /*<<< orphan*/  data; void* xattr_names; void* xattr_size; void* xattr_cnt; void* data_len; int /*<<< orphan*/  compr_type; void* nlink; void* size; void* flags; void* mode; void* gid; void* uid; void* mtime_nsec; void* mtime_sec; void* ctime_nsec; void* ctime_sec; void* atime_nsec; void* atime_sec; void* creat_sqnum; int /*<<< orphan*/  key; TYPE_1__ ch; } ;
struct ubifs_info {int dummy; } ;
struct TYPE_8__ {int tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_7__ {int tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_6__ {int tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct inode {int i_nlink; int i_uid; int i_gid; int i_mode; TYPE_4__ i_mtime; TYPE_3__ i_ctime; TYPE_2__ i_atime; int /*<<< orphan*/  i_ino; } ;

/* Variables and functions */
 int /*<<< orphan*/  UBIFS_INO_NODE ; 
 scalar_t__ UBIFS_INO_NODE_SZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct ubifs_inode* FUNC5 (struct inode const*) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_info*,struct ubifs_ino_node*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ubifs_ino_node*) ; 

__attribute__((used)) static void FUNC8(struct ubifs_info *c, struct ubifs_ino_node *ino,
		       const struct inode *inode, int last)
{
	int data_len = 0, last_reference = !inode->i_nlink;
	struct ubifs_inode *ui = FUNC5(inode);

	ino->ch.node_type = UBIFS_INO_NODE;
	FUNC3(c, &ino->key, inode->i_ino);
	ino->creat_sqnum = FUNC2(ui->creat_sqnum);
	ino->atime_sec  = FUNC2(inode->i_atime.tv_sec);
	ino->atime_nsec = FUNC1(inode->i_atime.tv_nsec);
	ino->ctime_sec  = FUNC2(inode->i_ctime.tv_sec);
	ino->ctime_nsec = FUNC1(inode->i_ctime.tv_nsec);
	ino->mtime_sec  = FUNC2(inode->i_mtime.tv_sec);
	ino->mtime_nsec = FUNC1(inode->i_mtime.tv_nsec);
	ino->uid   = FUNC1(inode->i_uid);
	ino->gid   = FUNC1(inode->i_gid);
	ino->mode  = FUNC1(inode->i_mode);
	ino->flags = FUNC1(ui->flags);
	ino->size  = FUNC2(ui->ui_size);
	ino->nlink = FUNC1(inode->i_nlink);
	ino->compr_type  = FUNC0(ui->compr_type);
	ino->data_len    = FUNC1(ui->data_len);
	ino->xattr_cnt   = FUNC1(ui->xattr_cnt);
	ino->xattr_size  = FUNC1(ui->xattr_size);
	ino->xattr_names = FUNC1(ui->xattr_names);
	FUNC7(ino);

	/*
	 * Drop the attached data if this is a deletion inode, the data is not
	 * needed anymore.
	 */
	if (!last_reference) {
		FUNC4(ino->data, ui->data, ui->data_len);
		data_len = ui->data_len;
	}

	FUNC6(c, ino, UBIFS_INO_NODE_SZ + data_len, last);
}