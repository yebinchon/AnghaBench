#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__* i_symlink; scalar_t__* u2_i_data; } ;
struct ufs_inode_info {TYPE_5__ i_u1; void* i_flags; } ;
struct TYPE_9__ {int /*<<< orphan*/ * ui_symlink; int /*<<< orphan*/  ui_addr; } ;
struct ufs2_inode {TYPE_4__ ui_u2; int /*<<< orphan*/  ui_flags; int /*<<< orphan*/  ui_gen; int /*<<< orphan*/  ui_blocks; int /*<<< orphan*/  ui_mtimensec; int /*<<< orphan*/  ui_ctimensec; int /*<<< orphan*/  ui_atimensec; int /*<<< orphan*/  ui_mtime; int /*<<< orphan*/  ui_ctime; int /*<<< orphan*/  ui_atime; int /*<<< orphan*/  ui_size; int /*<<< orphan*/  ui_gid; int /*<<< orphan*/  ui_uid; int /*<<< orphan*/  ui_nlink; int /*<<< orphan*/  ui_mode; } ;
struct super_block {int dummy; } ;
struct TYPE_8__ {void* tv_nsec; void* tv_sec; } ;
struct TYPE_7__ {void* tv_nsec; void* tv_sec; } ;
struct TYPE_6__ {void* tv_nsec; void* tv_sec; } ;
struct inode {void* i_blocks; void* i_generation; TYPE_3__ i_mtime; TYPE_2__ i_ctime; TYPE_1__ i_atime; void* i_size; void* i_gid; void* i_uid; int /*<<< orphan*/  i_ino; void* i_nlink; void* i_mode; struct super_block* i_sb; } ;
typedef  void* mode_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 struct ufs_inode_info* FUNC3 (struct inode*) ; 
 void* FUNC4 (struct super_block*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct super_block*,int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct inode *inode, struct ufs2_inode *ufs2_inode)
{
	struct ufs_inode_info *ufsi = FUNC3(inode);
	struct super_block *sb = inode->i_sb;
	mode_t mode;

	FUNC2("Reading ufs2 inode, ino %lu\n", inode->i_ino);
	/*
	 * Copy data to the in-core inode.
	 */
	inode->i_mode = mode = FUNC4(sb, ufs2_inode->ui_mode);
	inode->i_nlink = FUNC4(sb, ufs2_inode->ui_nlink);
	if (inode->i_nlink == 0) {
		FUNC8 (sb, "ufs_read_inode", "inode %lu has zero nlink\n", inode->i_ino);
		return -1;
	}

        /*
         * Linux now has 32-bit uid and gid, so we can support EFT.
         */
	inode->i_uid = FUNC5(sb, ufs2_inode->ui_uid);
	inode->i_gid = FUNC5(sb, ufs2_inode->ui_gid);

	inode->i_size = FUNC6(sb, ufs2_inode->ui_size);
	inode->i_atime.tv_sec = FUNC6(sb, ufs2_inode->ui_atime);
	inode->i_ctime.tv_sec = FUNC6(sb, ufs2_inode->ui_ctime);
	inode->i_mtime.tv_sec = FUNC6(sb, ufs2_inode->ui_mtime);
	inode->i_atime.tv_nsec = FUNC5(sb, ufs2_inode->ui_atimensec);
	inode->i_ctime.tv_nsec = FUNC5(sb, ufs2_inode->ui_ctimensec);
	inode->i_mtime.tv_nsec = FUNC5(sb, ufs2_inode->ui_mtimensec);
	inode->i_blocks = FUNC6(sb, ufs2_inode->ui_blocks);
	inode->i_generation = FUNC5(sb, ufs2_inode->ui_gen);
	ufsi->i_flags = FUNC5(sb, ufs2_inode->ui_flags);
	/*
	ufsi->i_shadow = fs32_to_cpu(sb, ufs_inode->ui_u3.ui_sun.ui_shadow);
	ufsi->i_oeftflag = fs32_to_cpu(sb, ufs_inode->ui_u3.ui_sun.ui_oeftflag);
	*/

	if (FUNC1(mode) || FUNC0(mode) || inode->i_blocks) {
		FUNC7(ufsi->i_u1.u2_i_data, &ufs2_inode->ui_u2.ui_addr,
		       sizeof(ufs2_inode->ui_u2.ui_addr));
	} else {
		FUNC7(ufsi->i_u1.i_symlink, ufs2_inode->ui_u2.ui_symlink,
		       sizeof(ufs2_inode->ui_u2.ui_symlink) - 1);
		ufsi->i_u1.i_symlink[sizeof(ufs2_inode->ui_u2.ui_symlink) - 1] = 0;
	}
	return 0;
}