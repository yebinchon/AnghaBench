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
struct ubifs_inode {scalar_t__ creat_sqnum; scalar_t__ synced_i_size; int /*<<< orphan*/  compr_type; int /*<<< orphan*/  flags; int /*<<< orphan*/  ui_size; } ;
struct ubifs_info {scalar_t__ highest_inum; int /*<<< orphan*/  cnt_lock; scalar_t__ max_sqnum; int /*<<< orphan*/  default_compr; int /*<<< orphan*/  bdi; int /*<<< orphan*/  vfs_sb; } ;
struct inode {int i_mode; scalar_t__ i_ino; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_size; int /*<<< orphan*/ * i_fop; TYPE_1__* i_mapping; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/ * a_ops; int /*<<< orphan*/ * backing_dev_info; scalar_t__ nrpages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ INUM_WARN_WATERMARK ; 
 scalar_t__ INUM_WATERMARK ; 
#define  S_IFBLK 134 
#define  S_IFCHR 133 
#define  S_IFDIR 132 
#define  S_IFIFO 131 
#define  S_IFLNK 130 
 int S_IFMT ; 
#define  S_IFREG 129 
#define  S_IFSOCK 128 
 scalar_t__ FUNC2 (int) ; 
 int S_ISGID ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  S_NOCMTIME ; 
 int /*<<< orphan*/  UBIFS_COMPR_NONE ; 
 int /*<<< orphan*/  UBIFS_INO_NODE_SZ ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct inode const*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 struct inode* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  ubifs_dir_inode_operations ; 
 int /*<<< orphan*/  ubifs_dir_operations ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  ubifs_file_address_operations ; 
 int /*<<< orphan*/  ubifs_file_inode_operations ; 
 int /*<<< orphan*/  ubifs_file_operations ; 
 struct ubifs_inode* FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  ubifs_symlink_inode_operations ; 
 int /*<<< orphan*/  FUNC16 (char*,unsigned long,scalar_t__) ; 

struct inode *FUNC17(struct ubifs_info *c, const struct inode *dir,
			      int mode)
{
	struct inode *inode;
	struct ubifs_inode *ui;

	inode = FUNC9(c->vfs_sb);
	ui = FUNC14(inode);
	if (!inode)
		return FUNC1(-ENOMEM);

	/*
	 * Set 'S_NOCMTIME' to prevent VFS form updating [mc]time of inodes and
	 * marking them dirty in file write path (see 'file_update_time()').
	 * UBIFS has to fully control "clean <-> dirty" transitions of inodes
	 * to make budgeting work.
	 */
	inode->i_flags |= (S_NOCMTIME);

	inode->i_uid = FUNC5();
	if (dir->i_mode & S_ISGID) {
		inode->i_gid = dir->i_gid;
		if (FUNC2(mode))
			mode |= S_ISGID;
	} else
		inode->i_gid = FUNC4();
	inode->i_mode = mode;
	inode->i_mtime = inode->i_atime = inode->i_ctime =
			 FUNC12(inode);
	inode->i_mapping->nrpages = 0;
	/* Disable readahead */
	inode->i_mapping->backing_dev_info = &c->bdi;

	switch (mode & S_IFMT) {
	case S_IFREG:
		inode->i_mapping->a_ops = &ubifs_file_address_operations;
		inode->i_op = &ubifs_file_inode_operations;
		inode->i_fop = &ubifs_file_operations;
		break;
	case S_IFDIR:
		inode->i_op  = &ubifs_dir_inode_operations;
		inode->i_fop = &ubifs_dir_operations;
		inode->i_size = ui->ui_size = UBIFS_INO_NODE_SZ;
		break;
	case S_IFLNK:
		inode->i_op = &ubifs_symlink_inode_operations;
		break;
	case S_IFSOCK:
	case S_IFIFO:
	case S_IFBLK:
	case S_IFCHR:
		inode->i_op  = &ubifs_file_inode_operations;
		break;
	default:
		FUNC0();
	}

	ui->flags = FUNC6(dir, mode);
	FUNC15(inode);
	if (FUNC3(mode))
		ui->compr_type = c->default_compr;
	else
		ui->compr_type = UBIFS_COMPR_NONE;
	ui->synced_i_size = 0;

	FUNC10(&c->cnt_lock);
	/* Inode number overflow is currently not supported */
	if (c->highest_inum >= INUM_WARN_WATERMARK) {
		if (c->highest_inum >= INUM_WATERMARK) {
			FUNC11(&c->cnt_lock);
			FUNC13("out of inode numbers");
			FUNC8(inode);
			FUNC7(inode);
			return FUNC1(-EINVAL);
		}
		FUNC16("running out of inode numbers (current %lu, max %d)",
			   (unsigned long)c->highest_inum, INUM_WATERMARK);
	}

	inode->i_ino = ++c->highest_inum;
	/*
	 * The creation sequence number remains with this inode for its
	 * lifetime. All nodes for this inode have a greater sequence number,
	 * and so it is possible to distinguish obsolete nodes belonging to a
	 * previous incarnation of the same inode number - for example, for the
	 * purpose of rebuilding the index.
	 */
	ui->creat_sqnum = ++c->max_sqnum;
	FUNC11(&c->cnt_lock);
	return inode;
}