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
struct TYPE_3__ {int unmount_mode; int bulk_read; int chk_data_crc; int /*<<< orphan*/  compr_type; scalar_t__ override_compr; } ;
struct ubifs_info {TYPE_1__ mount_opts; } ;
struct seq_file {int dummy; } ;
struct TYPE_4__ {struct ubifs_info* s_fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct seq_file *s, struct vfsmount *mnt)
{
	struct ubifs_info *c = mnt->mnt_sb->s_fs_info;

	if (c->mount_opts.unmount_mode == 2)
		FUNC0(s, ",fast_unmount");
	else if (c->mount_opts.unmount_mode == 1)
		FUNC0(s, ",norm_unmount");

	if (c->mount_opts.bulk_read == 2)
		FUNC0(s, ",bulk_read");
	else if (c->mount_opts.bulk_read == 1)
		FUNC0(s, ",no_bulk_read");

	if (c->mount_opts.chk_data_crc == 2)
		FUNC0(s, ",chk_data_crc");
	else if (c->mount_opts.chk_data_crc == 1)
		FUNC0(s, ",no_chk_data_crc");

	if (c->mount_opts.override_compr) {
		FUNC0(s, ",compr=%s",
			   FUNC1(c->mount_opts.compr_type));
	}

	return 0;
}