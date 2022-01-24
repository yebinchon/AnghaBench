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
typedef  union ubifs_key {int dummy; } ubifs_key ;
union ubifs_dev_desc {int /*<<< orphan*/  huge; int /*<<< orphan*/  new; } ;
struct ubifs_inode {size_t data_len; int flags; int xattr; void* data; void* ui_size; void* synced_i_size; void* xattr_names; void* xattr_size; void* xattr_cnt; void* creat_sqnum; int /*<<< orphan*/  compr_type; } ;
struct ubifs_ino_node {scalar_t__ data; int /*<<< orphan*/  xattr_names; int /*<<< orphan*/  xattr_size; int /*<<< orphan*/  xattr_cnt; int /*<<< orphan*/  creat_sqnum; int /*<<< orphan*/  compr_type; int /*<<< orphan*/  flags; int /*<<< orphan*/  data_len; int /*<<< orphan*/  size; int /*<<< orphan*/  mode; int /*<<< orphan*/  ctime_nsec; int /*<<< orphan*/  ctime_sec; int /*<<< orphan*/  mtime_nsec; int /*<<< orphan*/  mtime_sec; int /*<<< orphan*/  atime_nsec; int /*<<< orphan*/  atime_sec; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  nlink; } ;
struct ubifs_info {int /*<<< orphan*/  bdi; } ;
struct super_block {struct ubifs_info* s_fs_info; } ;
struct TYPE_7__ {void* tv_nsec; void* tv_sec; } ;
struct TYPE_6__ {void* tv_nsec; void* tv_sec; } ;
struct TYPE_5__ {void* tv_nsec; void* tv_sec; } ;
struct inode {int i_state; int i_flags; int i_mode; int /*<<< orphan*/  i_ino; int /*<<< orphan*/ * i_op; int /*<<< orphan*/ * i_fop; TYPE_4__* i_mapping; void* i_size; TYPE_3__ i_ctime; TYPE_2__ i_mtime; TYPE_1__ i_atime; void* i_gid; void* i_uid; void* i_nlink; } ;
typedef  void* int64_t ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_8__ {int /*<<< orphan*/ * a_ops; int /*<<< orphan*/ * backing_dev_info; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct inode* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int I_NEW ; 
#define  S_IFBLK 134 
#define  S_IFCHR 133 
#define  S_IFDIR 132 
#define  S_IFIFO 131 
#define  S_IFLNK 130 
 int S_IFMT ; 
#define  S_IFREG 129 
#define  S_IFSOCK 128 
 int S_NOATIME ; 
 int S_NOCMTIME ; 
 size_t UBIFS_MAX_INO_DATA ; 
 int UBIFS_MAX_INO_NODE_SZ ; 
 int UBIFS_XATTR_FL ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_info*,struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*,struct ubifs_ino_node*) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 struct inode* FUNC6 (struct super_block*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ubifs_info*,union ubifs_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ubifs_ino_node*) ; 
 void* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 void* FUNC12 (int /*<<< orphan*/ ) ; 
 void* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (void*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC15 (void*) ; 
 int /*<<< orphan*/  ubifs_dir_inode_operations ; 
 int /*<<< orphan*/  ubifs_dir_operations ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ubifs_file_address_operations ; 
 int /*<<< orphan*/  ubifs_file_inode_operations ; 
 int /*<<< orphan*/  ubifs_file_operations ; 
 struct ubifs_inode* FUNC17 (struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 
 int /*<<< orphan*/  ubifs_symlink_inode_operations ; 
 int FUNC19 (struct ubifs_info*,union ubifs_key*,struct ubifs_ino_node*) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*) ; 
 int FUNC21 (struct ubifs_info*,struct inode*) ; 

struct inode *FUNC22(struct super_block *sb, unsigned long inum)
{
	int err;
	union ubifs_key key;
	struct ubifs_ino_node *ino;
	struct ubifs_info *c = sb->s_fs_info;
	struct inode *inode;
	struct ubifs_inode *ui;

	FUNC3("inode %lu", inum);

	inode = FUNC6(sb, inum);
	if (!inode)
		return FUNC0(-ENOMEM);
	if (!(inode->i_state & I_NEW))
		return inode;
	ui = FUNC17(inode);

	ino = FUNC10(UBIFS_MAX_INO_NODE_SZ, GFP_NOFS);
	if (!ino) {
		err = -ENOMEM;
		goto out;
	}

	FUNC8(c, &key, inode->i_ino);

	err = FUNC19(c, &key, ino);
	if (err)
		goto out_ino;

	inode->i_flags |= (S_NOCMTIME | S_NOATIME);
	inode->i_nlink = FUNC12(ino->nlink);
	inode->i_uid   = FUNC12(ino->uid);
	inode->i_gid   = FUNC12(ino->gid);
	inode->i_atime.tv_sec  = (int64_t)FUNC13(ino->atime_sec);
	inode->i_atime.tv_nsec = FUNC12(ino->atime_nsec);
	inode->i_mtime.tv_sec  = (int64_t)FUNC13(ino->mtime_sec);
	inode->i_mtime.tv_nsec = FUNC12(ino->mtime_nsec);
	inode->i_ctime.tv_sec  = (int64_t)FUNC13(ino->ctime_sec);
	inode->i_ctime.tv_nsec = FUNC12(ino->ctime_nsec);
	inode->i_mode = FUNC12(ino->mode);
	inode->i_size = FUNC13(ino->size);

	ui->data_len    = FUNC12(ino->data_len);
	ui->flags       = FUNC12(ino->flags);
	ui->compr_type  = FUNC11(ino->compr_type);
	ui->creat_sqnum = FUNC13(ino->creat_sqnum);
	ui->xattr_cnt   = FUNC12(ino->xattr_cnt);
	ui->xattr_size  = FUNC12(ino->xattr_size);
	ui->xattr_names = FUNC12(ino->xattr_names);
	ui->synced_i_size = ui->ui_size = inode->i_size;

	ui->xattr = (ui->flags & UBIFS_XATTR_FL) ? 1 : 0;

	err = FUNC21(c, inode);
	if (err)
		goto out_invalid;

	/* Disable read-ahead */
	inode->i_mapping->backing_dev_info = &c->bdi;

	switch (inode->i_mode & S_IFMT) {
	case S_IFREG:
		inode->i_mapping->a_ops = &ubifs_file_address_operations;
		inode->i_op = &ubifs_file_inode_operations;
		inode->i_fop = &ubifs_file_operations;
		if (ui->xattr) {
			ui->data = FUNC10(ui->data_len + 1, GFP_NOFS);
			if (!ui->data) {
				err = -ENOMEM;
				goto out_ino;
			}
			FUNC14(ui->data, ino->data, ui->data_len);
			((char *)ui->data)[ui->data_len] = '\0';
		} else if (ui->data_len != 0) {
			err = 10;
			goto out_invalid;
		}
		break;
	case S_IFDIR:
		inode->i_op  = &ubifs_dir_inode_operations;
		inode->i_fop = &ubifs_dir_operations;
		if (ui->data_len != 0) {
			err = 11;
			goto out_invalid;
		}
		break;
	case S_IFLNK:
		inode->i_op = &ubifs_symlink_inode_operations;
		if (ui->data_len <= 0 || ui->data_len > UBIFS_MAX_INO_DATA) {
			err = 12;
			goto out_invalid;
		}
		ui->data = FUNC10(ui->data_len + 1, GFP_NOFS);
		if (!ui->data) {
			err = -ENOMEM;
			goto out_ino;
		}
		FUNC14(ui->data, ino->data, ui->data_len);
		((char *)ui->data)[ui->data_len] = '\0';
		break;
	case S_IFBLK:
	case S_IFCHR:
	{
		dev_t rdev;
		union ubifs_dev_desc *dev;

		ui->data = FUNC10(sizeof(union ubifs_dev_desc), GFP_NOFS);
		if (!ui->data) {
			err = -ENOMEM;
			goto out_ino;
		}

		dev = (union ubifs_dev_desc *)ino->data;
		if (ui->data_len == sizeof(dev->new))
			rdev = FUNC15(FUNC12(dev->new));
		else if (ui->data_len == sizeof(dev->huge))
			rdev = FUNC4(FUNC13(dev->huge));
		else {
			err = 13;
			goto out_invalid;
		}
		FUNC14(ui->data, ino->data, ui->data_len);
		inode->i_op = &ubifs_file_inode_operations;
		FUNC7(inode, inode->i_mode, rdev);
		break;
	}
	case S_IFSOCK:
	case S_IFIFO:
		inode->i_op = &ubifs_file_inode_operations;
		FUNC7(inode, inode->i_mode, 0);
		if (ui->data_len != 0) {
			err = 14;
			goto out_invalid;
		}
		break;
	default:
		err = 15;
		goto out_invalid;
	}

	FUNC9(ino);
	FUNC18(inode);
	FUNC20(inode);
	return inode;

out_invalid:
	FUNC16("inode %lu validation failed, error %d", inode->i_ino, err);
	FUNC2(c, ino);
	FUNC1(c, inode);
	err = -EINVAL;
out_ino:
	FUNC9(ino);
out:
	FUNC16("failed to read inode %lu, error %d", inode->i_ino, err);
	FUNC5(inode);
	return FUNC0(err);
}