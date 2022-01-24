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
struct super_block {int dummy; } ;
struct nilfs_sb_info {int /*<<< orphan*/  s_ifile; int /*<<< orphan*/  s_nilfs; } ;
struct nilfs_inode {int /*<<< orphan*/  i_device_code; } ;
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/ * i_op; TYPE_1__* i_mapping; int /*<<< orphan*/ * i_fop; } ;
struct buffer_head {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  mi_sem; } ;
struct TYPE_3__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 struct nilfs_sb_info* FUNC1 (struct super_block*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nilfs_aops ; 
 struct inode* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nilfs_dir_inode_operations ; 
 int /*<<< orphan*/  nilfs_dir_operations ; 
 int /*<<< orphan*/  nilfs_file_inode_operations ; 
 int /*<<< orphan*/  nilfs_file_operations ; 
 int FUNC11 (int /*<<< orphan*/ ,unsigned long,struct buffer_head**) ; 
 struct nilfs_inode* FUNC12 (int /*<<< orphan*/ ,unsigned long,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,unsigned long,struct buffer_head*) ; 
 int FUNC14 (struct inode*,struct nilfs_inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  nilfs_special_inode_operations ; 
 int /*<<< orphan*/  nilfs_symlink_inode_operations ; 
 scalar_t__ FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct super_block *sb, unsigned long ino,
			      struct inode *inode)
{
	struct nilfs_sb_info *sbi = FUNC1(sb);
	struct inode *dat = FUNC10(sbi->s_nilfs);
	struct buffer_head *bh;
	struct nilfs_inode *raw_inode;
	int err;

	FUNC6(&FUNC0(dat)->mi_sem);	/* XXX */
	err = FUNC11(sbi->s_ifile, ino, &bh);
	if (FUNC16(err))
		goto bad_inode;

	raw_inode = FUNC12(sbi->s_ifile, ino, bh);

	err = FUNC14(inode, raw_inode);
	if (err)
		goto failed_unmap;

	if (FUNC4(inode->i_mode)) {
		inode->i_op = &nilfs_file_inode_operations;
		inode->i_fop = &nilfs_file_operations;
		inode->i_mapping->a_ops = &nilfs_aops;
	} else if (FUNC2(inode->i_mode)) {
		inode->i_op = &nilfs_dir_inode_operations;
		inode->i_fop = &nilfs_dir_operations;
		inode->i_mapping->a_ops = &nilfs_aops;
	} else if (FUNC3(inode->i_mode)) {
		inode->i_op = &nilfs_symlink_inode_operations;
		inode->i_mapping->a_ops = &nilfs_aops;
	} else {
		inode->i_op = &nilfs_special_inode_operations;
		FUNC7(
			inode, inode->i_mode,
			FUNC9(FUNC8(raw_inode->i_device_code)));
	}
	FUNC13(sbi->s_ifile, ino, bh);
	FUNC5(bh);
	FUNC17(&FUNC0(dat)->mi_sem);	/* XXX */
	FUNC15(inode);
	return 0;

 failed_unmap:
	FUNC13(sbi->s_ifile, ino, bh);
	FUNC5(bh);

 bad_inode:
	FUNC17(&FUNC0(dat)->mi_sem);	/* XXX */
	return err;
}