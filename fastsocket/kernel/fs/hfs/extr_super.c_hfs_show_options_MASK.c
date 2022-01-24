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
struct vfsmount {int /*<<< orphan*/  mnt_sb; } ;
struct seq_file {int dummy; } ;
struct hfs_sb_info {scalar_t__ s_creator; scalar_t__ s_type; int s_file_umask; int s_dir_umask; scalar_t__ s_quiet; TYPE_2__* nls_io; TYPE_1__* nls_disk; int /*<<< orphan*/  session; int /*<<< orphan*/  part; int /*<<< orphan*/  s_gid; int /*<<< orphan*/  s_uid; } ;
struct TYPE_4__ {int /*<<< orphan*/  charset; } ;
struct TYPE_3__ {int /*<<< orphan*/  charset; } ;

/* Variables and functions */
 struct hfs_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,...) ; 

__attribute__((used)) static int FUNC3(struct seq_file *seq, struct vfsmount *mnt)
{
	struct hfs_sb_info *sbi = FUNC0(mnt->mnt_sb);

	if (sbi->s_creator != FUNC1(0x3f3f3f3f))
		FUNC2(seq, ",creator=%.4s", (char *)&sbi->s_creator);
	if (sbi->s_type != FUNC1(0x3f3f3f3f))
		FUNC2(seq, ",type=%.4s", (char *)&sbi->s_type);
	FUNC2(seq, ",uid=%u,gid=%u", sbi->s_uid, sbi->s_gid);
	if (sbi->s_file_umask != 0133)
		FUNC2(seq, ",file_umask=%o", sbi->s_file_umask);
	if (sbi->s_dir_umask != 0022)
		FUNC2(seq, ",dir_umask=%o", sbi->s_dir_umask);
	if (sbi->part >= 0)
		FUNC2(seq, ",part=%u", sbi->part);
	if (sbi->session >= 0)
		FUNC2(seq, ",session=%u", sbi->session);
	if (sbi->nls_disk)
		FUNC2(seq, ",codepage=%s", sbi->nls_disk->charset);
	if (sbi->nls_io)
		FUNC2(seq, ",iocharset=%s", sbi->nls_io->charset);
	if (sbi->s_quiet)
		FUNC2(seq, ",quiet");
	return 0;
}