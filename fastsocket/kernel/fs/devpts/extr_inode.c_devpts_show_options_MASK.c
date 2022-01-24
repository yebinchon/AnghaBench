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
struct seq_file {int dummy; } ;
struct pts_mount_opts {int /*<<< orphan*/  ptmxmode; int /*<<< orphan*/  mode; int /*<<< orphan*/  gid; scalar_t__ setgid; int /*<<< orphan*/  uid; scalar_t__ setuid; } ;
struct pts_fs_info {struct pts_mount_opts mount_opts; } ;

/* Variables and functions */
 struct pts_fs_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct seq_file *seq, struct vfsmount *vfs)
{
	struct pts_fs_info *fsi = FUNC0(vfs->mnt_sb);
	struct pts_mount_opts *opts = &fsi->mount_opts;

	if (opts->setuid)
		FUNC1(seq, ",uid=%u", opts->uid);
	if (opts->setgid)
		FUNC1(seq, ",gid=%u", opts->gid);
	FUNC1(seq, ",mode=%03o", opts->mode);
#ifdef CONFIG_DEVPTS_MULTIPLE_INSTANCES
	seq_printf(seq, ",ptmxmode=%03o", opts->ptmxmode);
#endif

	return 0;
}