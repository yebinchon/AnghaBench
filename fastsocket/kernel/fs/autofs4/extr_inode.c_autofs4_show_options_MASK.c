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
struct vfsmount {TYPE_2__* mnt_sb; } ;
struct seq_file {int dummy; } ;
struct inode {scalar_t__ i_uid; scalar_t__ i_gid; } ;
struct autofs_sb_info {int exp_timeout; int /*<<< orphan*/  type; int /*<<< orphan*/  max_proto; int /*<<< orphan*/  min_proto; int /*<<< orphan*/  oz_pgrp; int /*<<< orphan*/  pipefd; } ;
struct TYPE_4__ {TYPE_1__* s_root; } ;
struct TYPE_3__ {struct inode* d_inode; } ;

/* Variables and functions */
 int HZ ; 
 struct autofs_sb_info* FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,...) ; 

__attribute__((used)) static int FUNC4(struct seq_file *m, struct vfsmount *mnt)
{
	struct autofs_sb_info *sbi = FUNC0(mnt->mnt_sb);
	struct inode *root_inode = mnt->mnt_sb->s_root->d_inode;

	if (!sbi)
		return 0;

	FUNC3(m, ",fd=%d", sbi->pipefd);
	if (root_inode->i_uid != 0)
		FUNC3(m, ",uid=%u", root_inode->i_uid);
	if (root_inode->i_gid != 0)
		FUNC3(m, ",gid=%u", root_inode->i_gid);
	FUNC3(m, ",pgrp=%d", sbi->oz_pgrp);
	FUNC3(m, ",timeout=%lu", sbi->exp_timeout/HZ);
	FUNC3(m, ",minproto=%d", sbi->min_proto);
	FUNC3(m, ",maxproto=%d", sbi->max_proto);

	if (FUNC2(sbi->type))
		FUNC3(m, ",offset");
	else if (FUNC1(sbi->type))
		FUNC3(m, ",direct");
	else
		FUNC3(m, ",indirect");

	return 0;
}