#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vfsmount {int /*<<< orphan*/  mnt_sb; } ;
struct ufs_sb_info {unsigned int s_mount_opt; } ;
struct seq_file {int dummy; } ;
struct match_token {unsigned int token; int /*<<< orphan*/  pattern; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int Opt_err ; 
 unsigned int Opt_onerror_panic ; 
 unsigned int UFS_MOUNT_ONERROR ; 
 unsigned int UFS_MOUNT_UFSTYPE ; 
 struct ufs_sb_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 
 struct match_token* tokens ; 

__attribute__((used)) static int FUNC3(struct seq_file *seq, struct vfsmount *vfs)
{
	struct ufs_sb_info *sbi = FUNC1(vfs->mnt_sb);
	unsigned mval = sbi->s_mount_opt & UFS_MOUNT_UFSTYPE;
	const struct match_token *tp = tokens;

	while (tp->token != Opt_onerror_panic && tp->token != mval)
		++tp;
	FUNC0(tp->token == Opt_onerror_panic);
	FUNC2(seq, ",%s", tp->pattern);

	mval = sbi->s_mount_opt & UFS_MOUNT_ONERROR;
	while (tp->token != Opt_err && tp->token != mval)
		++tp;
	FUNC0(tp->token == Opt_err);
	FUNC2(seq, ",%s", tp->pattern);

	return 0;
}