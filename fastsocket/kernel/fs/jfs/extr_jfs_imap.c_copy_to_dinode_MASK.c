#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct jfs_sb_info {int inostamp; int uid; int gid; int umask; } ;
struct jfs_inode_info {int fileset; int saved_uid; int saved_gid; int mode2; int next_index; int otime; int acltype; int dev; int /*<<< orphan*/  ea; int /*<<< orphan*/  acl; int /*<<< orphan*/  ixpxd; } ;
struct TYPE_13__ {int tv_sec; int tv_nsec; } ;
struct TYPE_11__ {int tv_sec; int tv_nsec; } ;
struct TYPE_9__ {int tv_sec; int tv_nsec; } ;
struct inode {int i_ino; int i_generation; int i_nlink; int i_uid; int i_gid; int i_mode; TYPE_6__ i_mtime; TYPE_4__ i_ctime; TYPE_2__ i_atime; int /*<<< orphan*/  i_blocks; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_size; } ;
struct TYPE_14__ {scalar_t__ tv_nsec; void* tv_sec; } ;
struct TYPE_12__ {void* tv_nsec; void* tv_sec; } ;
struct TYPE_10__ {void* tv_nsec; void* tv_sec; } ;
struct TYPE_8__ {void* tv_nsec; void* tv_sec; } ;
struct dinode {void* di_rdev; void* di_acltype; TYPE_7__ di_otime; void* di_next_index; int /*<<< orphan*/  di_ea; int /*<<< orphan*/  di_acl; int /*<<< orphan*/  di_ixpxd; TYPE_5__ di_mtime; TYPE_3__ di_ctime; TYPE_1__ di_atime; void* di_mode; void* di_gid; void* di_uid; void* di_nlink; void* di_nblocks; void* di_size; void* di_gen; void* di_number; void* di_inostamp; void* di_fileset; } ;

/* Variables and functions */
 struct jfs_inode_info* FUNC0 (struct inode*) ; 
 struct jfs_sb_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 void* FUNC5 (int) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct jfs_inode_info*) ; 

__attribute__((used)) static void FUNC8(struct dinode * dip, struct inode *ip)
{
	struct jfs_inode_info *jfs_ip = FUNC0(ip);
	struct jfs_sb_info *sbi = FUNC1(ip->i_sb);

	dip->di_fileset = FUNC5(jfs_ip->fileset);
	dip->di_inostamp = FUNC5(sbi->inostamp);
	dip->di_number = FUNC5(ip->i_ino);
	dip->di_gen = FUNC5(ip->i_generation);
	dip->di_size = FUNC6(ip->i_size);
	dip->di_nblocks = FUNC6(FUNC2(ip->i_sb, ip->i_blocks));
	dip->di_nlink = FUNC5(ip->i_nlink);
	if (sbi->uid == -1)
		dip->di_uid = FUNC5(ip->i_uid);
	else
		dip->di_uid = FUNC5(jfs_ip->saved_uid);
	if (sbi->gid == -1)
		dip->di_gid = FUNC5(ip->i_gid);
	else
		dip->di_gid = FUNC5(jfs_ip->saved_gid);
	FUNC7(jfs_ip);
	/*
	 * mode2 is only needed for storing the higher order bits.
	 * Trust i_mode for the lower order ones
	 */
	if (sbi->umask == -1)
		dip->di_mode = FUNC5((jfs_ip->mode2 & 0xffff0000) |
					   ip->i_mode);
	else /* Leave the original permissions alone */
		dip->di_mode = FUNC5(jfs_ip->mode2);

	dip->di_atime.tv_sec = FUNC5(ip->i_atime.tv_sec);
	dip->di_atime.tv_nsec = FUNC5(ip->i_atime.tv_nsec);
	dip->di_ctime.tv_sec = FUNC5(ip->i_ctime.tv_sec);
	dip->di_ctime.tv_nsec = FUNC5(ip->i_ctime.tv_nsec);
	dip->di_mtime.tv_sec = FUNC5(ip->i_mtime.tv_sec);
	dip->di_mtime.tv_nsec = FUNC5(ip->i_mtime.tv_nsec);
	dip->di_ixpxd = jfs_ip->ixpxd;	/* in-memory pxd's are little-endian */
	dip->di_acl = jfs_ip->acl;	/* as are dxd's */
	dip->di_ea = jfs_ip->ea;
	dip->di_next_index = FUNC5(jfs_ip->next_index);
	dip->di_otime.tv_sec = FUNC5(jfs_ip->otime);
	dip->di_otime.tv_nsec = 0;
	dip->di_acltype = FUNC5(jfs_ip->acltype);
	if (FUNC4(ip->i_mode) || FUNC3(ip->i_mode))
		dip->di_rdev = FUNC5(jfs_ip->dev);
}