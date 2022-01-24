#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct super_block {int s_blocksize; int s_blocksize_bits; } ;
struct object_info {int size; int loadaddr; int /*<<< orphan*/  attr; int /*<<< orphan*/  execaddr; int /*<<< orphan*/  parent_id; int /*<<< orphan*/  file_id; } ;
struct inode {int i_size; int i_nlink; int i_blocks; TYPE_1__* i_mapping; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;
struct TYPE_6__ {int loadaddr; int stamped; int mmu_private; int /*<<< orphan*/  attr; int /*<<< orphan*/  execaddr; int /*<<< orphan*/  parent_id; } ;
struct TYPE_5__ {int /*<<< orphan*/  s_gid; int /*<<< orphan*/  s_uid; } ;
struct TYPE_4__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct inode*) ; 
 TYPE_2__* FUNC1 (struct super_block*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  adfs_aops ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,struct inode*) ; 
 int /*<<< orphan*/  adfs_dir_inode_operations ; 
 int /*<<< orphan*/  adfs_dir_operations ; 
 int /*<<< orphan*/  adfs_file_inode_operations ; 
 int /*<<< orphan*/  adfs_file_operations ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 struct inode* FUNC7 (struct super_block*) ; 

struct inode *
FUNC8(struct super_block *sb, struct object_info *obj)
{
	struct inode *inode;

	inode = FUNC7(sb);
	if (!inode)
		goto out;

	inode->i_uid	 = FUNC1(sb)->s_uid;
	inode->i_gid	 = FUNC1(sb)->s_gid;
	inode->i_ino	 = obj->file_id;
	inode->i_size	 = obj->size;
	inode->i_nlink	 = 2;
	inode->i_blocks	 = (inode->i_size + sb->s_blocksize - 1) >>
			    sb->s_blocksize_bits;

	/*
	 * we need to save the parent directory ID so that
	 * write_inode can update the directory information
	 * for this file.  This will need special handling
	 * for cross-directory renames.
	 */
	FUNC0(inode)->parent_id = obj->parent_id;
	FUNC0(inode)->loadaddr  = obj->loadaddr;
	FUNC0(inode)->execaddr  = obj->execaddr;
	FUNC0(inode)->attr      = obj->attr;
	FUNC0(inode)->stamped	  = ((obj->loadaddr & 0xfff00000) == 0xfff00000);

	inode->i_mode	 = FUNC5(sb, inode);
	FUNC4(&inode->i_mtime, inode);
	inode->i_atime = inode->i_mtime;
	inode->i_ctime = inode->i_mtime;

	if (FUNC2(inode->i_mode)) {
		inode->i_op	= &adfs_dir_inode_operations;
		inode->i_fop	= &adfs_dir_operations;
	} else if (FUNC3(inode->i_mode)) {
		inode->i_op	= &adfs_file_inode_operations;
		inode->i_fop	= &adfs_file_operations;
		inode->i_mapping->a_ops = &adfs_aops;
		FUNC0(inode)->mmu_private = inode->i_size;
	}

	FUNC6(inode);

out:
	return inode;
}