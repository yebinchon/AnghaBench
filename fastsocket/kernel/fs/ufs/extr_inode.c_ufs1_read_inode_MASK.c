#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__* i_symlink; scalar_t__* i_data; } ;
struct ufs_inode_info {TYPE_10__ i_u1; void* i_oeftflag; void* i_shadow; void* i_flags; } ;
struct TYPE_20__ {int /*<<< orphan*/ * ui_symlink; int /*<<< orphan*/  ui_addr; } ;
struct TYPE_18__ {int /*<<< orphan*/  ui_oeftflag; int /*<<< orphan*/  ui_shadow; } ;
struct TYPE_19__ {TYPE_7__ ui_sun; } ;
struct TYPE_14__ {int /*<<< orphan*/  tv_sec; } ;
struct TYPE_13__ {int /*<<< orphan*/  tv_sec; } ;
struct TYPE_12__ {int /*<<< orphan*/  tv_sec; } ;
struct ufs_inode {TYPE_9__ ui_u2; TYPE_8__ ui_u3; int /*<<< orphan*/  ui_flags; int /*<<< orphan*/  ui_gen; int /*<<< orphan*/  ui_blocks; TYPE_3__ ui_mtime; TYPE_2__ ui_ctime; TYPE_1__ ui_atime; int /*<<< orphan*/  ui_size; int /*<<< orphan*/  ui_nlink; int /*<<< orphan*/  ui_mode; } ;
struct super_block {int dummy; } ;
struct TYPE_17__ {scalar_t__ tv_nsec; void* tv_sec; } ;
struct TYPE_16__ {scalar_t__ tv_nsec; void* tv_sec; } ;
struct TYPE_15__ {scalar_t__ tv_nsec; void* tv_sec; } ;
struct inode {void* i_blocks; void* i_generation; TYPE_6__ i_ctime; TYPE_5__ i_atime; TYPE_4__ i_mtime; int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_ino; void* i_nlink; void* i_mode; struct super_block* i_sb; } ;
typedef  void* mode_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ FUNC1 (void*) ; 
 struct ufs_inode_info* FUNC2 (struct inode*) ; 
 void* FUNC3 (struct super_block*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,struct ufs_inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*,struct ufs_inode*) ; 

__attribute__((used)) static int FUNC10(struct inode *inode, struct ufs_inode *ufs_inode)
{
	struct ufs_inode_info *ufsi = FUNC2(inode);
	struct super_block *sb = inode->i_sb;
	mode_t mode;

	/*
	 * Copy data to the in-core inode.
	 */
	inode->i_mode = mode = FUNC3(sb, ufs_inode->ui_mode);
	inode->i_nlink = FUNC3(sb, ufs_inode->ui_nlink);
	if (inode->i_nlink == 0) {
		FUNC7 (sb, "ufs_read_inode", "inode %lu has zero nlink\n", inode->i_ino);
		return -1;
	}
	
	/*
	 * Linux now has 32-bit uid and gid, so we can support EFT.
	 */
	inode->i_uid = FUNC9(sb, ufs_inode);
	inode->i_gid = FUNC8(sb, ufs_inode);

	inode->i_size = FUNC5(sb, ufs_inode->ui_size);
	inode->i_atime.tv_sec = FUNC4(sb, ufs_inode->ui_atime.tv_sec);
	inode->i_ctime.tv_sec = FUNC4(sb, ufs_inode->ui_ctime.tv_sec);
	inode->i_mtime.tv_sec = FUNC4(sb, ufs_inode->ui_mtime.tv_sec);
	inode->i_mtime.tv_nsec = 0;
	inode->i_atime.tv_nsec = 0;
	inode->i_ctime.tv_nsec = 0;
	inode->i_blocks = FUNC4(sb, ufs_inode->ui_blocks);
	inode->i_generation = FUNC4(sb, ufs_inode->ui_gen);
	ufsi->i_flags = FUNC4(sb, ufs_inode->ui_flags);
	ufsi->i_shadow = FUNC4(sb, ufs_inode->ui_u3.ui_sun.ui_shadow);
	ufsi->i_oeftflag = FUNC4(sb, ufs_inode->ui_u3.ui_sun.ui_oeftflag);

	
	if (FUNC1(mode) || FUNC0(mode) || inode->i_blocks) {
		FUNC6(ufsi->i_u1.i_data, &ufs_inode->ui_u2.ui_addr,
		       sizeof(ufs_inode->ui_u2.ui_addr));
	} else {
		FUNC6(ufsi->i_u1.i_symlink, ufs_inode->ui_u2.ui_symlink,
		       sizeof(ufs_inode->ui_u2.ui_symlink) - 1);
		ufsi->i_u1.i_symlink[sizeof(ufs_inode->ui_u2.ui_symlink) - 1] = 0;
	}
	return 0;
}