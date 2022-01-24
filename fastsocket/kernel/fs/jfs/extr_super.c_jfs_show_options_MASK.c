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
struct vfsmount {int /*<<< orphan*/  mnt_sb; } ;
struct seq_file {int dummy; } ;
struct jfs_sb_info {int uid; int gid; int umask; int flag; TYPE_1__* nls_tab; } ;
struct TYPE_2__ {int /*<<< orphan*/  charset; } ;

/* Variables and functions */
 int JFS_ERR_CONTINUE ; 
 int JFS_ERR_PANIC ; 
 int JFS_GRPQUOTA ; 
 int JFS_NOINTEGRITY ; 
 struct jfs_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int JFS_USRQUOTA ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC3(struct seq_file *seq, struct vfsmount *vfs)
{
	struct jfs_sb_info *sbi = FUNC0(vfs->mnt_sb);

	if (sbi->uid != -1)
		FUNC1(seq, ",uid=%d", sbi->uid);
	if (sbi->gid != -1)
		FUNC1(seq, ",gid=%d", sbi->gid);
	if (sbi->umask != -1)
		FUNC1(seq, ",umask=%03o", sbi->umask);
	if (sbi->flag & JFS_NOINTEGRITY)
		FUNC2(seq, ",nointegrity");
	if (sbi->nls_tab)
		FUNC1(seq, ",iocharset=%s", sbi->nls_tab->charset);
	if (sbi->flag & JFS_ERR_CONTINUE)
		FUNC1(seq, ",errors=continue");
	if (sbi->flag & JFS_ERR_PANIC)
		FUNC1(seq, ",errors=panic");

#ifdef CONFIG_QUOTA
	if (sbi->flag & JFS_USRQUOTA)
		seq_puts(seq, ",usrquota");

	if (sbi->flag & JFS_GRPQUOTA)
		seq_puts(seq, ",grpquota");
#endif

	return 0;
}